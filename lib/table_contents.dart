import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/page/dev/diy_scroll_demo.dart';
import 'package:flutter_demo/page/dev/nestedscroll_page_demo.dart';
import 'package:flutter_demo/page/lib/lottie_demo.dart';
import 'package:flutter_demo/page/widget/list/list_pull_refresh_demo.dart';
import 'package:flutter_demo/page/widget/list/list_wheel_demo.dart';

import 'page/dev/nestedscroll_tabbar_list_demo.dart';
import 'page/lib/transformer_demo.dart';
import 'simple_import.dart';

class TableContents {
  // 自定义功能实现
  static Map<String, Widget> DIYDemos = {
    "翻页效果Flip": FlipDemo(),
    "抽屉效果Drawer": DrawerDemo(),
  };

  // 开发真实案例
  static Map<String, Widget> DevDemos = {
    "NestedScroll定制化页面":NestedScrollPageDemo(),
    "AppBar吸顶效果+TabBar列表":NestedScrollTabBarListDemo(),
    "顶部Bar吸顶效果": BarSnapDemo(),
    "列表滑动的阻尼效果自定义": DIYScrollDemo(),
    "Gif控制播放": GifPlayerDemo(),
    "Text组件中英文组合显示": TextChineseEnglishDemo(),
    "TabBar切换动效": TabBarSwitchDemo(),
    "侧滑拉取获取更多": SidePullDemo(), // 借鉴refresh组件改造
    "MethodChannel调用": NativeDemo(),
    "悬浮框功能": CommonWidgetDemo({
      "Stack组件模式": FloatStackDemo(),
      "Draggable组件模式": FloatDraggableDemo(),
      "OverlayEntry组件模式": FloatOverLayDemo(),
    }),
  };

  // 组件学习
  static Map<String, Widget> WidgetDemos = {
    "Sliver组件": CommonWidgetDemo(SliverWidgetDemos),
    "List组件": CommonWidgetDemo(ListDemos),
    "Canvas组件": CommonWidgetDemo(CanvasWidgetDemos),
    "GestureDetector组件": CommonWidgetDemo(GestureDetectorDemos),
  };

  // Sliver组件
  static Map<String, Widget> SliverWidgetDemos = {
    "SliverList": SliverListDemo(),
    "SliverGrid": SliverGridDemo(),
    "SliverPrototypeExtentList": SliverPrototypeExtentListDemo(),
  };

  // Canvas组件
  static Map<String, Widget> CanvasWidgetDemos = {
    "抖音Logo绘制": CanvasDouyinDemo(),
    "仪表盘绘制": CanvasDouyinDemo(),
  };

  // GestureDetector组件
  static Map<String, Widget> GestureDetectorDemos = {
    "手势拖拽": GestureDragDemo(),
    "手势缩放": GestureScaleDemo(),
    "手势点击": GestureClickDemo(),
    "手势缩放1": GestureScaleDemo1(),
    "手势缩放2": GestureScaleDemo2(),
  };

  // List组件
  static Map<String, Widget> ListDemos = {
    "ListWheelScrollView": ListWheelDemo(),
    "RefreshIndicator VS CupertinoSliverRefreshControl": ListPullRefreshDemo(),
  };

  // 第三方库使用
  static Map<String, Widget> OpenLibDemos = {
    "瀑布流staggered": StaggeredDemo(),
    "瀑布流waterfall": WaterFallDemo(),
    "图表Charts": ChartsDemo(),
    "轮播Swiper": SwiperDemo(),
    "图片cache_image": CacheImageDemo(),
    "刷新SmartRefresher": RefreshDemo(),
    "全局管理Redux": ReduxDemo(),
    "FishRedux开发": FishReduxDemo(),
    "视频播放VideoPlayer": VideoDemo(),
    "网络请求库Dio": HttpDemo(),
    "套接字WebSocket": HttpServerDemo(),
    "效果轮播transformer": TransformerPageDemo(),
    "动效lottie": LottieDemo(),
  };

  static Map<String, Map<String, Widget>> tables = {
    "自定义功能": DIYDemos,
    "开发实战案例": DevDemos,
    "组件学习": WidgetDemos,
    "第三方库": OpenLibDemos,
  };
}
