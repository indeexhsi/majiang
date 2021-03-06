package mj.net.handler.login
{
	import com.isnowfox.core.SingletonError;
	import com.isnowfox.core.io.message.Message;
	import com.isnowfox.core.io.message.MessageHandler;

    import mj.manager.UiManager;

    import mj.net.message.login.SysSetting;
	
	/**
 	 * pong
 	 * 
 	 * 消息处理器！
 	 * <b>生成器生成代码，生成后不会在覆盖!</b>
 	 * @author isnowfox消息生成器
 	 */
	public final class SysSettingHandler implements MessageHandler
	{
		public static const instance:SysSettingHandler = new SysSettingHandler();
		
		public function SysSettingHandler()
		{
			if(instance!=null){
				throw new SingletonError("ResourceManager 是单例模式");
			}
		}
		
		public function handler(msg:Message):Boolean
		{
			return inHandler(SysSetting(msg));
		}
		
		/**
		 * @return 返回true 表示需要脱离缓冲，不然这个消息的内容可能被覆盖
		 */
		private function inHandler(msg:SysSetting):Boolean
		{
			UiManager.instance.changeSysSetting(msg);
			return false;
		}
	}
}