# 命名空间

> There are only two hard things in Computer Science: cache invalidation and naming things.
>
> – Phil Karlton

## 图层管理(sketch)

<!-- <video src="https://static.jovi.cc/naming.mp4" width="600" controls="controls">
Your browser does not support the video tag.
![sketch art board naming](https://guidelines.cc/assets/imgs/1_WEtHw89crn2bKV2mDf7dTA-2x.png)
</video> -->

## BEM

使用 BEM 命名规范，理论上讲，每行 css 代码都只有一个选择器。

BEM代表 “**块（block）,元素（element）,修饰符（modifier）**”,我们常用这三个实体开发组件。

在选择器中，由以下三种符号来表示扩展的关系：

```css
-   中划线 ：仅作为连字符使用，表示某个块或者某个子元素的多单词之间的连接记号。
__  双下划线：双下划线用来连接块和块的子元素
_   单下划线：单下划线用来描述一个块或者块的子元素的一种状态

type-block__element_modifier
```

### 块（block）

一个块是设计或布局的一部分，它有具体且唯一地意义 ，要么是语义上的要么是视觉上的。

在大多数情况下，任何独立的页面元素（或复杂或简单）都可以被视作一个块。它的HTML容器会有一个唯一的CSS类名，也就是这个块的名字。

针对块的CSS类名会加一些前缀（`ui-`），这些前缀在CSS中有类似 命名空间 的作用。

一个块的正式（实际上是半正式的）定义有下面三个基本原则：

1. CSS中只能使用类名（不能是ID）。
2. 每一个块名应该有一个命名空间（前缀）
3. 每一条CSS规则必须属于一个块。

例如：一个自定义列表 `.list` 是一个块，通常自定义列表是算在 `mod` 类别的，在这种情况下，一个 `list` 列表的block写法应该为:

```css
.list
```

### 元素（element）

块中的子元素是块的子元素，并且子元素的子元素在 `bem` 里也被认为是块的直接子元素。一个块中元素的类名必须用父级块的名称作为前缀。

如上面的例子，`li.item` 是列表的一个子元素，

```css
.list{}
.list .item{}


.list{}
.list__item{}
```

### 修饰符（modifier）

一个“修饰符”可以理解为一个块的特定状态，标识着它持有一个特定的属性。

用一个例子来解释最好不过了。一个表示按钮的块默认有三个大小：小，中，大。为了避免创建三个不同的块，最好是在块上加修饰符。这个修饰符应该有个名字（比如：`size` ）和值（ `small`，`normal` 或者 `big` ）。

如上面的例子中，表示一个选中的列表，和一个激活的列表项

```css
.list{}
.list.select{}
.list .item{}
.list .item.active{}

  
.list{}
.list_select{}
.list__item{}
.list__item_active{}
```

![bem](https://guidelines.cc/assets/imgs/bem.jpg)

标准BEM命名示例

![bem示例](https://guidelines.cc/assets/imgs/982c830552af.png)

## ABEM

结合原子设计理论的BEM命名空间。

### atomic 理论框架

![atomic](https://guidelines.cc/assets/imgs/uisdc-yz-20181113-21.jpg)

### atomic design 的 [a,m,o]

![amo](https://guidelines.cc/assets/imgs/Atomic-design-no-shell_zerev7.webp)

### classic BEM + atomic prefix

![classic BEM + atomic prefix](https://guidelines.cc/assets/imgs/classic-BEM-answer.svg)

### camelCase BEM + atomic prefix

![camelCase BEM + atomic prefix](https://guidelines.cc/assets/imgs/camelCase-BEM-answer.svg)

atomic 设计理论的前缀+BEM
推荐使用 

```css
[a/m/o]-blockName__elementName--modifierName
```

## BEM 优化

|Type|Prefix|Examples|Description|
|:--|:--|:--|:--|
|Component|`c-`|`c-card` `c-checklist`	|Form the backbone of an application and contain all of the cosmetics for a standalone component.|
|Layout module|`l-`|`l-grid` `l-container`	|These modules have no cosmetics and are purely used to position `c-` components and structure an application’s layout.|
|Helpers|`h-`|`h-show` `h-hide`|These utility classes have a single function, often using `!important` to boost their specificity. (Commonly used for positioning or visibility.)|
|States|`is-` `has-`|`is-visible` `has-loaded`|	Indicate different states that a `c-` component can have. More detail on this concept can be found inside problem 6 below, but|

更多前缀使用策略:

|type|prefix|Description|
|:--|:--|:--|
|Object | `o-` | Signify that something is an Object, and that it may be used in any number of unrelated contexts to the one you can currently see it in. Making modifications to these types of class could potentially have knock-on effects in a lot of other unrelated places. Tread carefully.|
|Component | `c-` | Signify that something is a Component. This is a concrete, implementation-specific piece of UI. All of the changes you make to its styles should be detectable in the context you’re currently looking at. Modifying these styles should be safe and have no side effects.|
|utility | `u-` | Signify that this class is a Utility class. It has a very specific role (often providing only one declaration) and should not be bound onto or changed. It can be reused and is not tied to any specific piece of UI. You will probably recognise this namespace from libraries and methodologies like SUIT.|
|theme |`t-` | Signify that a class is responsible for adding a Theme to a view. It lets us know that UI Components’ current cosmetic appearance may be due to the presence of a theme.|
|states |`is-`, `has-` | Signify that the piece of UI in question is currently styled a certain way because of a state or condition. This stateful namespace is gorgeous, and comes from SMACSS. It tells us that the DOM currently has a temporary, optional, or short-lived style applied to it due to a certain state being invoked.|
|hack |`_` | Signify that this class is the worst of the worst—a hack! Sometimes, although incredibly rarely, we need to add a class in our markup in order to force something to work. If we do this, we need to let others know that this class is less than ideal, and hopefully temporary (i.e. do not bind onto this).|
|javascript |`js-`| Signify that this piece of the DOM has some behaviour acting upon it, and that JavaScript binds onto it to provide that behaviour. If you’re not a developer working with JavaScript, leave these well alone.|
|QA |`qa-`| Signify that a QA or Test Engineering team is running an automated UI test which needs to find or bind onto these parts of the DOM. Like the JavaScript namespace, this basically just reserves hooks in the DOM for non-CSS purposes.|

## 项目文件管理

![a designer's way of keeping files organized](https://guidelines.cc/assets/imgs/file-system-02.png)

![a designer's way of keeping files organized2](https://guidelines.cc/assets/imgs/image-5_folder-algorithm-2.jpg)

[File naming convertion](http://design.palkobotond.ro/naming-convention-1/)

## 辅助插件

- sortme
- renameit
- replace2

详见 [sketch plugin](https://guidelines.cc/content/resources/sketchPlugins.html)