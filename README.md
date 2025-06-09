# LearnQML
学习QML的仓库，这里存放代码的Example集合
- 该仓库有1-n...个子仓库，每个仓库代表学习的不同内容
- 一开始是一些小的Project包含很多个等待学习的小点
- 后面是很多个大项目集合，应用前面的小Project所学的内容

## 内容列表

### 1.calculator 计算器

内容：

- 定制MenuBar-背景色，边框，文本色
- 给布局加边框方便调试，左右加弹簧
- ColumnLayout 比Column强大以及Column很坑
- Qt Creator支持实时预览
- Qt Creator可以设置qml save时格式化
- TextField、ComboBox、Button
- Button的onClicked方法很关键，执行javastricpet代码，弱类型var

#### 2、BigFan旋转的大风车

- 图片Image控件，anchors.fill 填充Item
- Image嵌套Image，旋转动画
- anchors.bottom + anchors.horizontalCenter + verticalCenterOffset
- anchors.centerIn只能是一个特定Item
- anchors.horizontalCenter和anchors.verticalCenter很常用
- 可移动的MouseArea

#### 3、ButtonComponent自定义按钮组件

- 自定义组件名与qml文件名一致
- 自定义控件暴露属性给外部
- 自定义控件暴露信号给外部

#### 4、Image图片变换

- 特别警告，要想用Qt6.8加载文件
  - 必须加：set(CMAKE_AUTORCC ON)
  - 必须再加：qt_add_executable(MyApp
        main.cpp
        resources.qrc     # 👈 在这里显式加进去)
  - 预览QML打不开qrc图片
- set(CMAKE_AUTORCC ON)  # 如果没有写，必须加上
- 图片加边框
