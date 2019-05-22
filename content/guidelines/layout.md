# 布局

?> _TODO_ 待完善

为控制视觉平衡，要求设计布局单位的一致性。设计网格采用8dp网格，页面内小元素采用4dp网格对齐（图标、文字）。

*设备像素比相同都是@1x时， 1pt(iOS)=1sp(android text)=1dp(android)=1px*

![layout-unitsmeasurements](https://guidelines.cc/assets/imgs/layout-unitsmeasurements-dev-grid.png)

## 栅格化布局

栅格化布局包含三种元素：

![responsive-columns-margins-gutters](https://guidelines.cc/assets/imgs/responsive-columns-margins-gutters.png)

- 列
- 间距
- 补白

### 列

网页、app的内容应该放置在列的区域内（包含间距），不应超出列（放置到补白范围内）。
列宽度通常使用百分比定义，而不是使用固定的数值。以适应内容和屏幕尺寸的灵活响应。不同设备屏幕包含的列数通过`breakpoint`来设置。

![layout-responsive-columns-360](https://guidelines.cc/assets/imgs/layout-responsive-columns-360.png)
360dp手机屏幕使用4列布局。

![layout-responsive-columns-600](https://guidelines.cc/assets/imgs/layout-responsive-columns-600.png)
600dp的pad屏幕使用8列布局。

### 间距

间距主要用来辅助分割内容、协助布局页面元素。

间距通常使用固定值，根据屏幕的大小分成几种不同大小的固定尺寸。

![layout-responsive-gutters-360](https://guidelines.cc/assets/imgs/layout-responsive-gutters-360.png)
360dp手机屏幕使用16dp间距。

![layout-responsive-gutters-600](https://guidelines.cc/assets/imgs/layout-responsive-gutters-600.png)
360dp的pad屏幕使用24dp间距。

## 补白

边距是设置屏幕左右边缘的空白空间。

通常根据breakpoint使用固定值，根据屏幕大小改变补白的宽度，跟间距一样，补白通常也是根据breakpoint，屏幕越大宽度越宽。

![layout-responsive-margins-360](https://guidelines.cc/assets/imgs/layout-responsive-margins-360.png)
360dp手机屏幕使用16dp补白。

![layout-responsive-margins-600](https://guidelines.cc/assets/imgs/layout-responsive-margins-600.png)
600dp的pad使用24dp间距。

!> 栅格系统可以根据自身需求和设计风格灵活制定，但需遵守基本的设计审美。 在新的交互、设计规范推出之前，请严格遵守标准的breakpoint标准和栅格布局尺寸。

<video src="https://guidelines.cc/assets/imgs/layout-responsive-breakpoints.mp4" width="600" controls="controls">
Your browser does not support the video tag.
</video>

## Material design breakpoint 规则

|breakpoint range（dp）|竖屏|横屏|屏幕尺寸|列|间距/补白*|
|:--|:--|:--|:--|:--|:--|
| 0-359 | 小屏幕手机 |  | XSMALL | 4 | 16 |
| 360-399 | 中屏幕手机 |  | XSMALL | 4 | 16 |
| 400-479 | 大屏幕手机 |  | XSMALL | 4 | 16|
| 480-599 | 大屏幕手机 | 小屏幕手机 | XSMALL | 4 | 16 |
| 600-719 | 小屏幕平板电脑 | 中屏幕手机 | small | 8 | 16 |
| 720-839 | 大屏幕平板电脑 | 大屏幕手机 | small | 8 | 24 |
| 840-959 | 大屏幕平板电脑 | 大屏幕手机 | small | 12 | 24 |
| 960-1023 |  | 小平屏幕板电脑 | small | 12 | 24 |
| 1024-1279 |  | 大平屏幕板电脑 | medium | 12 | 24 |
| 1280-1439 |  | 大平屏幕板电脑 | medium | 12 | 24 |
| 1440-1599 |  |  | large | 12 | 24 |
| 1600-1919 |  |  | large | 12 | 24 |
| 1920+ |  |  | xlarge | 12 | 24 |

## iOS breakpoint

略

## keyline

?> TODO

## 容器

容器主要用来容纳一些特定的UI元素，比如：图标、图片，和material design的 Material/surface。

![layout-unitsmeasurements-dev-containers](https://guidelines.cc/assets/imgs/layout-unitsmeasurements-dev-containers.png)

1. 图像容器
2. 图标容器
3. 表面容器

## 宽高比

为保持布局的一致性，请在图标和不居中尽量使用一致的宽高比。
建议使用： `16:9`，`3:2`，`4:3`，`1:1`，`3：4`，`2:3`

![layout-unitsmeasurements-dev-aspectratio](https://guidelines.cc/assets/imgs/layout-unitsmeasurements-dev-aspectratio.png)
