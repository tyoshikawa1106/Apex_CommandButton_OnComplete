/*
 * onComplete処理・テストクラス
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
@isTest
private class CommandButtonOnCompleteControllerTest {
	
	/*
	 * コンストラクタ・テスト
	 */
    static testMethod void CommandButtonOnCompleteControllerTest() {
        System.debug('◆◆◆◆CommandButtonOnCompleteControllerTest:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
            
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            CommandButtonOnCompleteController cls = new CommandButtonOnCompleteController();
            System.assertEquals(cls.message, '');
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆CommandButtonOnCompleteControllerTest:END');
    }
    
    /*
	 * ボタン押下処理・テスト
	 */
    static testMethod void doButtonClickTest() {
        System.debug('◆◆◆◆doButtonClickTest:START');
        
        // ユーザ
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
            
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            CommandButtonOnCompleteController cls = new CommandButtonOnCompleteController();
            System.assertEquals(cls.message, '');
            // ボタン処理
            cls.doButtonClick();
            System.assertEquals(cls.message, 'OK');
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆doButtonClickTest:END');
    }
    
    /*
     * ユーザ取得
     */
    private static User getUser() {
    	return [select Id from User where Id =: UserInfo.getUserId() limit 1];
    }
    
    /*
     * テストページ取得
     */
    private static PageReference getPageReference() {
    	return new PageReference('TestPage');
    }
}