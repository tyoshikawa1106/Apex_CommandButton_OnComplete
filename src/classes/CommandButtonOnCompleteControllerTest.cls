/**
 * commandButton onComplete処理サンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class CommandButtonOnCompleteControllerTest {
    
    /**
     * コンストラクタ
     */
    static testMethod void CommandButtonOnCompleteControllerTest() {
            
        Test.startTest();
        
        CommandButtonOnCompleteController cls = new CommandButtonOnCompleteController();
        System.assertEquals(cls.message, '');
        
        Test.stopTest();
    }
    
    /**
     * ボタン押下処理
     */
    static testMethod void doButtonClickTest() {
        
        Test.startTest();
        
        // コンストラクタ
        CommandButtonOnCompleteController cls = new CommandButtonOnCompleteController();
        System.assertEquals(cls.message, '');
        // ボタン処理
        cls.doButtonClick();
        System.assertEquals(cls.message, 'OK');
        
        Test.stopTest();
    }
}