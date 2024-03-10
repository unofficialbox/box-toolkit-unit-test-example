public with sharing class BoxMoveFolderItemsAction {
    public class BoxRequest {
        @InvocableVariable(label='Source Folder Id')
        public String sourceFolderId;

        @InvocableVariable(label='Destination Folder Id')
        public String destinationFolderId;
    }

    public class BoxResult {
        @InvocableVariable(label='Was Move Successful?')
        public Boolean wasMoveSuccessful;
    }


    @InvocableMethod(label='Move Box Items' category='Box' callout=true)
    public static List<BoxResult> moveFiles(List<BoxRequest> boxRequestList) {

        List<BoxResult> boxResultList = new List<BoxResult>();
        for(BoxRequest boxRequest: boxRequestList) {
            BoxResult boxResult = new BoxResult();

            String sourceFolderId = boxRequest.sourceFolderId;
            BoxFolderItemsResponse boxFolderItemsResponse = BoxFolderService.getBoxFolderItems(sourceFolderId);

            String destinationFolderId = boxRequest.destinationFolderId;
            List<BoxItemResponse> boxItemResponseList = BoxFolderService.moveBoxItems(boxFolderItemsResponse.entries, destinationFolderId);

            

            if(boxItemResponseList != null || boxItemResponseList.size() >= 0) {
                boxResult.wasMoveSuccessful = true;
            }
            else {
                boxResult.wasMoveSuccessful = false;
            }

            boxResultList.add(boxResult);

        }
        return boxResultList;
    }

    public class BoxMoveFolderItemsException extends Exception {
    }
}