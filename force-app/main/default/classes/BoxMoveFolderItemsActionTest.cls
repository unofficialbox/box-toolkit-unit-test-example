
@isTest
private class BoxMoveFolderItemsActionTest {

    @isTest
    private static void shouldMoveFolderItems() {
        List<BoxTestMockCallout.MockResponse> responses = new List<BoxTestMockCallout.MockResponse>();
        String noItemsJson = '{ "entries": [], "total_count": 0 }';
        BoxTestMockCallout.MockResponse noItemsResp = new BoxTestMockCallout.MockResponse(
            noItemsJson,
            'OK',
            200
        );
        responses.add(noItemsResp);
        
        Test.setMock(HttpCalloutMock.class, new BoxTestMockCallout(responses));

        BoxMoveFolderItemsAction.BoxRequest request = new BoxMoveFolderItemsAction.BoxRequest();
        request.sourceFolderId = '0123';
        request.destinationFolderId = '3210';

        Test.startTest();
        List<BoxMoveFolderItemsAction.BoxResult> resultList = BoxMoveFolderItemsAction.moveFiles(new List<BoxMoveFolderItemsAction.BoxRequest>{ request });
        Test.stopTest();
        System.assert(resultList[0].wasMoveSuccessful, 'Folder items should be moved');

    }
}