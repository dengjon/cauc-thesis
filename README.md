# [CAUC THESIS](https://github.com/dengjon/cauc-thesis)

# 简介

本项目为中国民航大学本科毕业设计论文的LaTeX模板，其初始版本由理学院秦绍萌老师提供。在毕设撰写中对其存在的一些问题进行修改，供擅长LaTeX并且希望用LaTeX撰写本科毕业设计的同学使用。

本模板存在许多不完善的地方，但本人时间和能力有限，希望对此感兴趣的同学能够加入进来，让同学们能够更方便地使用LaTeX撰写论文。此模板为非官方模板，但是如果随着维护者的增加，模板逐渐变得完善，相信推动其成为官方模板并非难事。目前研究生院官网的硕士论文LaTeX模板也是由我编写的，如果可能的话希望能够将本硕模板合并，制作成为像 `zjuthesis` 一样的完备模板。

# 使用方式

## 编译方式

- 本模板经过调整，将相关的字体下载到了 `fonts/` 目录下，能够兼容多操作系统
- 可以使用Overleaf进行在线编辑，经测试编译速度较快
- 本地编译需要安装**TeXLive** 工具包（2022及以上版本），使用XeLaTex引擎
  注：如果安装了CTEX包可能会出现无法编译的问题，因为CTEX中使用的是MikTeX工具而非TeXLive。
  （此处的CTEX指的是一种TeX工具的集成包，并非LaTeX中使用的`ctex`宏包）

## 参考文献

### Bibtex

为了能够适配学校的模板要求，并且方便参考文献的整理，本模板推荐并仅提供使用`.bib`文件保存参考文献信息，使用BibTex编译的方式，具体使用方式如下：

首先创建`.bib`文件，用于保存参考文献的BibTeX格式信息，在`.tex`主文件中导入该`.bib`文件即可在文件编译的时候导入参考文献。BibTeX格式的参考文献信息获取方式有两种：

1. 谷歌学术（可用谷粉学术镜像作为替代）

   使用谷歌学术查找文献时可以直接导出bibtex格式的引用信息，中英文文献都适用，但很遗憾的是知网并不支持直接导出bibtex，因此需要自行使用谷歌学术搜索。将导出的文献引用信息粘贴到`.bib`文件中即可

2. 文献管理软件导出

   文献管理软件是一种能够系统化管理文献的软件，代表软件有Zotero，Mendeley，EndNote等，使用文献管理软件可以直接批量导出参考文献的BibTeX信息。在此提供一种[Zotero+LaTeX](https://www.bilibili.com/video/BV1K7411p75F?spm_id_from=333.999.0.0)的文献导出教程。

**编译注意事项**：每次在`.tex`主文件中引用新的参考文献时都需要使用**xelatex+bibtex+2*xelatex**的方式才能顺利构造引用超链接，否则在引用的位置会显示问号。

### bibliography

如果希望手动添加参考文献，可以将原来参考文献部分的`\bibliographystyle{gbt7714-2005-numerical}`替换为下方的命令

```tex
\begingroup
\renewcommand{\chapter}[2]{}
\begin{thebibliography}{99}
    \addtolength{\itemsep}{-2em}  % 缩小行距
    \bibitem{ref1}XXX\\
\end{thebibliography}
\endgroup
```

## 个人信息页

个人信息页及中英文封面页，本模板提供了非常方便的使用方式，直接根据`documentclass`中的提示修改填写即可，会自动补全下划线。

由于不同学院的名称长度不同（比如十个字的电动学院和三个字的理学院等），为了显示美观需要使用的同学自行调整宽度。前往`settings/cover.tex`找到`tabularx`环境（本模板使用表格的方式对个人信息进行标准化排版），`tabularx`环境代码示例如下所示

```tex
\begin{tabularx}{280pt}{c >{\centering}X}
学生姓名： & \uline{\hfill \StudentName\hfill}
\end{tabularx}
```

其中`280pt`表示整个表格的宽度，同学们自行调整大小即可，中英文模板都可以用该方法调整。

# 文件说明

1. pic/：用于保存中航大logo图片的文件夹（勿动）
2. figures/：用于存放用于插入论文的图片
3. fonts/: 用于存放字体文件的文件夹（勿动）
4. settings/：存放模板的各种配置文件，其中包含：
   1. commands.tex：自定义和重新定义的一些命令
   2. contents：目录格式设置
   3. cover.tex：封面页的信息
   4. fonts.tex：字体的设置以及字体命令的重定义
   5. format.tex：全文的一些一般化的格式设置，例如页眉、行距等
   6. pakages.tex：导入宏包
5. cauc_thesis.cls：所有格式、设置的汇总文件
6. cauc_thesis.tex：论文主文件
7. gbt7714-2005-numerical.bst：国标2005版参考文献引用格式（学校要求规范）
8. reference.bib：参考文献bibtex引用格式信息的储存文件

# 使用技巧

在编写TeX文件时，常用的软件有TeXstudio等，但本人在撰写论文的时候使用的是vscode，因为vscode的代码高亮、代码补全和插件等功能非常吸引我，在此提供一个[vscode+latex](https://zhuanlan.zhihu.com/p/166523064)的配置教程（仅推荐，根据个人喜好决定是否使用）