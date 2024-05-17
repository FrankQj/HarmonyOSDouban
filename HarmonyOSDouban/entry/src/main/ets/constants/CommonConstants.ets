/**
 * 所有功能的通用常量。
 */
export default class CommonConstants {
  /**
   * 账号的输入长度。
   */
  static readonly INPUT_ACCOUNT_LENGTH = 11;

  /**
   * 密码的输入长度。
   */
  static readonly INPUT_PASSWORD_LENGTH = 8;

  /**
   * 输入框的左填充。
   */
  static readonly INPUT_PADDING_LEFT = 0;

  /**
   * 模拟登录的延迟时间。
   */
  static readonly LOGIN_DELAY_TIME = 2000;

  /**
   * 组件的通用间距。
   */
  static readonly COMMON_SPACE = 12;

  /**
   * List组件的通用间距。
   */
  static readonly COMMON_LIST_SPACE = 10;

  /**
   * 组件的通用圆角
   */
  static readonly COMMON_BORDER_RADIUS = 4;


  /**
   * Text组件的small字体
   */
  static readonly COMMON_TEXT_SIZE_SMALL = 12;

  /**
   * 首页的标题文本。
   */
  static readonly HOME_TITLE = '首页';

  /**
   * 设置页面的标题文本。
   */
  static readonly MINE_TITLE = '我的';

  /**
   * 其他登录方法的间距。
   */
  static readonly LOGIN_METHODS_SPACE = 44;

  /**
   * 组件的宽度或高度覆盖父组件。
   */
  static readonly FULL_PARENT = '100%';

  /**
   * 按钮的宽度。
   */
  static readonly BUTTON_WIDTH = '90%';

  /**
   * 设置列表的宽度。
   */
  static readonly SET_LIST_WIDTH = '42%';

  /**
   * 首页标签索引。
   */
  static readonly HOME_TAB_INDEX = 0;

  /**
   * 书影音标签索引。
   */
  static readonly  BOOKVIDEO_TAB_INDEX = 1;

  /**
   * 小组标签索引。
   */
  static readonly GROUP_TAB_INDEX = 2;

  /**
   * 市集标签索引。
   */
  static readonly MAKET_TAB_INDEX = 3;

  /**
   * 我的标签索引。
   */
  static readonly MINE_TAB_INDEX = 4;

  /**
   * 书影音的 tab 标题数组
   */
  static readonly  BOOK_VIDEO_TAB_TITLES: String[] = ['电影', "电视", "读书", "连载", "播客", "音乐", "同城"]
}