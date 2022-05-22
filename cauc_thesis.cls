%%---------------------------------------------------------------
% Author: D.J. Sun (2018, ATC)
% DATE: 2022.5.22
% Reference: SIAEInternshipReport(CAUC), zjuthesis, Shaomeng-Qin's homemade LaTeX Template
% 本模板用于中国民航大学本科毕业设计，主要参考理学院秦绍萌老师的自制模板以及浙江大学硕博毕设模板，将其整合修改得到现在的版本。希望本模板能够广泛流传，让中航大所有想要使用Latex撰写论文的同学都能用上一份规范、方便的模板。
% 由于本人能力有限，模板中依然存在一些问题，需要使用该模板的同学自行修改，带来的不便深表歉意。
%%----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cauc_thesis}
              [2022/02/13 v0.1 Standard LaTeX Template for CAUC thesis report]
% \LoadClass[UTF8,12pt,a4paper,openany,oneside]{book}[2007/10/19]

%----------Specify options as key value pairs-----------
\RequirePackage{kvoptions}

\SetupKeyvalOptions{
    family=cauc_thesis,
    prefix=
}

\DeclareStringOption{StudentName}
\DeclareStringOption{StudentID}
\DeclareStringOption{AdvisorName}
\DeclareStringOption{Grade}
\DeclareStringOption{Major}
\DeclareStringOption{Department}
\DeclareStringOption{Title}
\DeclareStringOption{TitleEng}
\DeclareStringOption{SubmitYear}
\DeclareStringOption{SubmitMonth}

\ProcessKeyvalOptions*

\PassOptionsToPackage{no-math}{fontspec}
\PassOptionsToPackage{AutoFakeBold}{xeCJK}

%----------------页面基本设置----------------------
\LoadClass[a4paper,punct,space,heading=true]{ctexrep}

%----------导入相关命令和格式设置文件----------------
\input{settings/commands}
\input{settings/format}




