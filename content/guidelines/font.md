# 字体

字体是体系化界面设计中最基本的构成之一。

我们的用户通过文本来理解内容和完成工作，科学的字体系统将大大提升用户的阅读体验及工作效率。

## 字体家族

优秀的字体系统要选择合适的字体家族。来维护在不同平台以及浏览器的显示下，字体始终保持良好的易读性和可读性，体现了友好、稳定和专业的特性。

可以调用系统内置字体

```css
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'PingFang SC', 'Hiragino Sans GB',
  'Microsoft YaHei', 'Helvetica Neue', Helvetica, Arial, sans-serif, 'Apple Color Emoji',
  'Segoe UI Emoji', 'Segoe UI Symbol';
```

## 主字体

我们基于电脑显示器阅读距离（50 cm）以及最佳阅读角度（0.3）对 Ant Design 的主字体进行了一次升级，从原先的 12 上升至 14，以保证在多数常用显示器上的用户阅读效率最佳。

![最佳字体大小](../../assets/imgs/yriUFbqOPtVniYYiikfb.png)

## 字阶与行高

字阶和行高决定着一套字体系统的动态与秩序之美。字阶是指一系列有规律的不同尺寸的字体。行高可以理解为一个包裹在字体外面的无形的盒子。

![字阶](../../assets/imgs/xpykKKFJQorFJltdXkie.png)

![行高](../../assets/imgs/iFjgfIBExksqCqGMwUlw.png)

## 字体设计规范

字体规范除 `primary`，`variant`，`onSurface`，`onPrimary`部分根据产品调整外，其他规范适用于全部产品，根据产品终端不同，选用不同字体的样式库。 web端的， 则可参考上面提到的CSS。

- 桌面客户端应用&web端 ： 微软雅黑版本
- android设备：noto sans版本
- iOS设备：pingfang版本

### 字体设计规则表

字体设计详见下表：

<!-- |-|-|textcolor|*|*|*|emphasis|*|*|interaction font|*|*|*|*|font weight|*|*|
|:--|:--|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|text|font size|primary|variant|onSurface|onPrimary|high|midium|low|link|info|warining|error|success|300|500|700|
| h1       | 46 | ✔️ | ✔️ |  |  | ✔️ | ✔️ | ✔️ |  |  |  |  |  | ✔️ | ✔️ | ✔️ |
| h2       | 38 | ✔️ | ✔️ |  |  | ✔️ | ✔️ | ✔️ |  |  |  |  |  | ✔️ | ✔️ | ✔️ |
| h3       | 30 | ✔️ | ✔️ |  |  | ✔️ | ✔️ | ✔️ |  |  |  |  |  | ✔️ | ✔️ | ✔️ |
| h4       | 24 | ✔️ | ✔️ |  |  | ✔️ | ✔️ | ✔️ |  |  |  |  |  | ✔️ | ✔️ | ✔️ |
| h5       | 20 | ✔️ | ✔️ |  |  | ✔️ | ✔️ | ✔️ |  |  |  |  |  | ✔️ | ✔️ | ✔️ |
| h6       | 16 | ✔️ | ✔️ |  |  | ✔️ | ✔️ | ✔️ |  |  |  |  |  | ✔️ | ✔️ | ✔️ |
| subtitle | 16 | ✔️ | ✔️ |  |  | ✔️ | ✔️ | ✔️ |  |  |  |  |  |  |  | ✔️ |
| overline | 14 | ✔️ | ✔️ |  |  | ✔️ | ✔️ | ✔️ |  |  |  |  |  | ✔️ |  | ✔️ |
| caption  | 12 | ✔️ | ✔️ |  |  | ✔️ | ✔️ | ✔️ |  |  |  |  |  |  |  | ✔️ |
| body1    | 14 | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ |  | ✔️ | ✔️ |
| body2    | 12 | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ |  | ✔️ | ✔️ |
| button L | 16 | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ |  |  |  |  |  |  | ✔️ |
| button S | 14 | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ | ✔️ |  |  |  |  |  |  | ✔️ | -->

![font style table](../../assets/imgs/pb-jx4ZAjh1fL.png)

### 主题字体颜色表：

UI中与主题色相关的字体样式包含以下四种，根据实际情景选择使用。

| 名称 | 颜色 | 文字预览 | hex 色值 | rgb 色值 |
| :-- | :--: | :-- | :--: | :--: |
| primary 主色 | <span style="margin:20px;padding:25px;background:#06f;float:left;"></span> | <span style="font-size:16px;color:#0066ff;">测试文字 <br> Lorem ipsum dolor sit amet</span> | `#0066FF` | `rgb(0,102,255)` |
| variant 衍生色 | <span style="margin:20px;padding:25px;background:#06f;float:left;"></span> | <span style="font-size:16px;color:#0066ff;">测试文字 <br> Lorem ipsum dolor sit amet</span>| `#0066FF` | `rgb(0,102,255)` |
| onSurface 在表面上 | <span style="margin:20px;padding:25px;background:#06f;float:left;"></span> | <span style="font-size:16px;color:#0066ff;">测试文字 <br> Lorem ipsum dolor sit amet</span>|  `#0066FF` | `rgb(0,102,255)` |
| onPrimary 在主题色上 | <span style="margin:20px;padding:24px;background:#fff;border:1px #ccc solid;float:left;"></span> | <span style="font-size:16px; background:#06f;color:#fff;">测试文字 <br> Lorem ipsum dolor sit amet</span>| `#FFFFFF` | `rgb(0,0,0)` |

### 字体对比度颜色表：

UI中不同场景会用到字体颜色表达优先级和信息主次，主要分以下五种。  其中低对比度包含disabled样式。

| 名称 | 颜色 | 文字预览 | 透明度 | hex 色值 | rgb 色值 |
| :-- | :--: | :-- | :-- | :--: | :--: |
| black 黑 | <span style="margin:20px;padding:25px;background:#000;float:left;"></span> |<span style="font-size:16px;color:#000;">测试文字 <br> Lorem ipsum dolor sit amet</span> | 0% | `#000000` | `rgba(255,255,255,1)` |
| high emphasis 高对比 | <span style="margin:20px;padding:25px;background:#000;float:left;opacity:.8;"></span> |<span style="font-size:16px;color:#000;opacity:.8;">测试文字 <br> Lorem ipsum dolor sit amet</span> | 80% | `#000000` | `rgba(255,255,255,.8)` |
| midium emphasis 中对比度 | <span style="margin:20px;padding:25px;background:#000;float:left;opacity:.6;"></span> |<span style="font-size:16px;color:#000;opacity:.6;">测试文字 <br> Lorem ipsum dolor sit amet</span> | 60% | `#000000` | `rgba(255,255,255,.6)` |
| low emphasis 低对比度 | <span style="margin:20px;padding:25px;background:#000;float:left;opacity:.38;"></span> |<span style="font-size:16px;color:#000;opacity:.38;">测试文字 <br> Lorem ipsum dolor sit amet</span> | 38% | `#000000` | `rgba(255,255,255,38)` |

### 交互字体颜色表：

UI中不同场景下用到交互功能的文字，包含以下几种，定义到的颜色，请勿做其他用途，仅可用作交互色定义使用，与色轮位置接近的颜色也禁止使用。

| 名称 | 颜色 | 文字预览 | hex 色值 | rgb 色值 |
| :-- | :--: | :-- | :--: | :--: |
| link 链接色 | <span style="margin:20px;padding:25px;background:#06f;float:left;"></span> | <span style="font-size:16px;color:#0066ff;">测试文字 <br> Lorem ipsum dolor sit amet</span> | `#0066FF` | `rgb(0,102,255)` |
| warining 警告色 | <span style="margin:20px;padding:25px;background:#e68600;float:left;"></span> | <span style="font-size:16px;color:#e68600;">测试文字 <br> Lorem ipsum dolor sit amet</span> | `#E68600` | `rgb(230,134,0)` |
| error 错误色 | <span style="margin:20px;padding:25px;background:#E60000;float:left;"></span> | <span style="font-size:16px;color:#E60000;">测试文字 <br> Lorem ipsum dolor sit amet</span> | `#E60000` | `rgb(230,0,0)` |
| success 链接色 | <span style="margin:20px;padding:25px;background:#00991A;float:left;"></span> | <span style="font-size:16px;color:#00991A;">测试文字 <br> Lorem ipsum dolor sit amet</span> | `#00991A` | `rgb(0,153,26)` |

### 字体字重预览表：

UI中不同场景会用到字体颜色表达优先级和信息主次，主要分以下三种。

| 字重 | 字重值 | 文字预览 |
| :-- | :--: | :-- |
| light | 300 | <span style="font-size:16px;color:#000; font-weight:300;">测试文字 <br> Lorem ipsum dolor sit amet</span> |
| regular | 400 |  <span style="font-size:16px;color:#000; font-weight:400;">测试文字 <br> Lorem ipsum dolor sit amet</span> |
| medium | 500 |  <span style="font-size:16px;color:#000; font-weight:500;">测试文字 <br> Lorem ipsum dolor sit amet</span> |
| blod | 700 |  <span style="font-size:16px;color:#000; font-weight:700;">测试文字 <br> Lorem ipsum dolor sit amet</span> |


## 资源

sketch 字体样式库，可在[sketch libraries](/content/resources/sketchLib.md) 菜单中选择使用。