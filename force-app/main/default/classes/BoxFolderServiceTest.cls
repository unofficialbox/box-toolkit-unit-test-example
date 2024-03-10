
@isTest
public with sharing class BoxFolderServiceTest {
    @testSetup
    static void setup() {
    }

    @isTest
    private static void shouldGetZeroFolderItems() {

        List<BoxTestMockCallout.MockResponse> responses = new List<BoxTestMockCallout.MockResponse>();
        String noItemsJson = '{ "entries": [], "total_count": 0 }';
        BoxTestMockCallout.MockResponse noItemsResp = new BoxTestMockCallout.MockResponse(
            noItemsJson,
            'OK',
            200
        );
        responses.add(noItemsResp);
        
        Test.setMock(HttpCalloutMock.class, new BoxTestMockCallout(responses));

        Test.startTest();
        BoxFolderItemsResponse folderItems = BoxFolderService.getBoxFolderItems('123456');
        Test.stopTest();
        System.assertEquals(0, folderItems.total_count, 'Folder items total count should be 0');
    }  
}