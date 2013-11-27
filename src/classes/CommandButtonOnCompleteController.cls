/**
 * commandButton onComplete処理サンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class CommandButtonOnCompleteController {
    
    // メッセージ
    public String message {get; set;}
    
    /**
     * コンストラクタ
     */
    public CommandButtonOnCompleteController() {
        System.debug('CommandButtonOnCompleteController:START');
        
        // メッセージ
        this.message = '';
        
        System.debug('CommandButtonOnCompleteController:END');
    }
    
    /**
     * ボタン押下処理
     * @param   : none
     * @return  : none
     */
    public void doButtonClick() {
        System.debug('doButtonClick:START');
        
        // メッセージ
        this.message = 'OK';
        
        System.debug('doButtonClick:END');
    }
}