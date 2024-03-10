public with sharing class BoxFolderService {
    public static final String METHOD_GET = 'GET';
    public static final String METHOD_PUT = 'PUT';

    public static final String CONTENT_TYPE_HEADER = 'Content-Type';
    public static final String APPLICATION_JSON_HEADER = 'application/json';

    public static final String MOVE_FILES_URL_STRING = 'https://api.box.com/2.0/files/{0}';
    public static final String MOVE_FOLDERS_URL_STRING = 'https://api.box.com/2.0/folders/{0}';
    public static final String FOLDER_ITEMS_URL_STRING = 'https://api.box.com/2.0/folders/{0}/items';

    
    public static BoxFolderItemsResponse getBoxFolderItems(String folderId) {
        box.Toolkit boxToolkit = new box.Toolkit();

        String folderItemsEndpoint = String.format(FOLDER_ITEMS_URL_STRING, 
        new List<String> {folderId});         
        SYstem.debug('Found folder items endpoint: ' + folderItemsEndpoint);
        HttpRequest httpRequest = new HttpRequest();
        httpRequest.setMethod(METHOD_GET);
        httpRequest.setEndpoint(folderItemsEndpoint);
        httpRequest.setHeader(CONTENT_TYPE_HEADER, APPLICATION_JSON_HEADER);
        System.debug('Found request: ' + httpRequest);
        HttpResponse folderItemsHttpResponse;
        BoxFolderItemsResponse folderItemsResponse;
        if(!Test.isRunningTest()) {
            folderItemsHttpResponse = boxToolkit.sendRequest(httpRequest);
            System.debug('Found http response: ' + folderItemsHttpResponse);
        } 
        else {
            System.debug('Running test....');
            Http http = new Http();
            folderItemsHttpResponse = http.send(httpRequest);    
        }
        String folderItemResponseBody = folderItemsHttpResponse.getBody();
        System.debug('Found response: ' + folderItemResponseBody);
        folderItemsResponse = BoxFolderItemsResponse.parse(folderItemResponseBody);

        if(String.isNotEmpty(boxToolkit.mostRecentError)) {
            System.debug('Found error: ' + boxToolkit.mostRecentError);
        }
        


        return folderItemsResponse;
    }

    public static List<BoxItemResponse> moveBoxItems(List<BoxFolderItemsResponse.BoxItem> boxItemList, String destinationFolderId) {
        box.Toolkit boxToolkit = new box.Toolkit();
        List<BoxItemResponse> boxItemResponseList = new List<BoxItemResponse>();
        for(BoxFolderItemsResponse.BoxItem boxItem: boxItemList){
            System.debug('Found item with id: ' + boxItem.id + ' type: ' + boxItem.type + boxItem.name);

            String moveItemEndpoint;
            if(boxItem.type.equalsIgnoreCase('file')) {
                moveItemEndpoint = String.format(MOVE_FILES_URL_STRING, new List<String> {boxItem.id});   
            }
            else if(boxItem.type.equalsIgnoreCase('folder')) {
                moveItemEndpoint = String.format(MOVE_FOLDERS_URL_STRING, new List<String> {boxItem.id});   

            }
            else {
                continue;
            }
            HttpRequest moveItemHttpRequest = new HttpRequest();
            moveItemHttpRequest.setMethod(METHOD_PUT);
            moveItemHttpRequest.setEndpoint(moveItemEndpoint);
            moveItemHttpRequest.setHeader(CONTENT_TYPE_HEADER, APPLICATION_JSON_HEADER);

            String requestBody =
                '{"parent": {"id": "' +
                destinationFolderId +
                '"}}';
            moveItemHttpRequest.setBody(JSON.serialize(requestBody));

            HttpResponse moveItemHttpResponse;
            if(!Test.isRunningTest()) {
                moveItemHttpResponse = boxToolkit.sendRequest(moveItemHttpRequest);
            }
            else {
                System.debug('Running test....');
                Http http = new Http();
                moveItemHttpResponse = http.send(moveItemHttpRequest);
            }
            String moveItemResponseBody = moveItemHttpResponse.getBody();
            System.debug('Found response: ' + moveItemResponseBody);

            BoxItemResponse boxItemResponse = BoxItemResponse.parse(moveItemResponseBody);
            boxItemResponseList.add(boxItemResponse);
        }
        return boxItemResponseList;
    }

}