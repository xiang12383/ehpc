-- MySQL dump 10.13  Distrib 5.6.22, for osx10.9 (x86_64)
--
-- Host: localhost    Database: ehpc
-- ------------------------------------------------------
-- Server version	5.6.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('52dbc735b9b7');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `visitNum` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'并行运算比赛','这是一个比赛',43,'2016-09-12 00:00:00'),(2,'新的资讯','这是一饿新的资讯\n\n![](https://segmentfault.com/img/bVD8e5)',6,'2016-10-07 12:58:48'),(3,'测试',' 这是 Markdown 测试\r\n\r\n[测试](http://selfboot.cn)\r\n\r\n\r\n\r\n- 1\r\n- 2\r\n- 3',7,'2016-10-12 12:42:24'),(4,'新的文章','#测试提交\r\n\r\n## 标题1',20,'2016-10-12 12:45:43'),(5,'新的资讯信息','这是新的',1,'2016-10-14 08:35:46'),(6,'C++ 编译过程','简单地说，一个编译器就是一个程序，它可以阅读以某一种语言（源语言）编写的程序，并把该程序翻译成一个等价的、用另一种语言（目标语言）编写的程序。\r\n\r\nC/C++编译系统将一个程序转化为可执行程序的过程包含：\r\n\r\n* 预处理(preprocessing)：根据已放置的文件中的预处理指令来修改源文件的内容。\r\n* 编译(compilation)：通过词法分析和语法分析，在确认所有指令都是符合语法规则之后，将其翻译成等价的中间代码表示或汇编代码。\r\n* 汇编(assembly)：把汇编语言代码翻译成目标机器指令的过程。\r\n* 链接(linking)：找到所有用到的函数所在的目标文件，并把它们链接在一起合成为可执行文件(executable file)。\r\n\r\n# 预处理\r\n\r\n预处理器是在程序源文件被编译之前根据预处理指令对程序源文件进行处理的程序。**预处理器指令以#号开头标识，末尾不包含分号**。预处理命令不是C/C++语言本身的组成部分，不能直接对它们进行编译和链接。C/C++语言的一个重要功能是可以使用预处理指令和具有预处理的功能。C/C++提供的预处理功能主要有文件包含、宏替换、条件编译等。\r\n\r\n## 文件包含\r\n\r\n预处理指令 #include 用于包含头文件，有两种形式：#include <xxx.h>，#include \"xxx.h\"。\r\n\r\n尖括号形式表示被包含的文件在系统目录中。如果被包含的文件不一定在系统目录中，应该用双引号形式。在双引号形式中可以指出文件路径和文件名。如果在双引号中没有给出绝对路径，则默认为用户当前目录中的文件，此时系统首先在用户当前目录中寻找要包含的文件，若找不到再在系统目录中查找。\r\n\r\n对于用户自己编写的头文件，宜用双引号形式。对于系统提供的头文件，既可以用尖括号形式，也可以用双引号形式，都能找到被包含的文件，但显然用尖括号形式更直截了当，效率更高。\r\n\r\n## 宏替换\r\n\r\n`宏定义`：一般用一个短的名字代表一个长的代码序列。宏定义包括无参数宏定义和带参数宏定义两类。宏名和宏参数所代表的代码序列可以是任何意义的内容，如类型、常量、变量、操作符、表达式、语句、函数、代码块等。\r\n\r\n宏定义在源文件中必须单独另起一行，换行符是宏定义的结束标志，因此宏定义以换行结束，不需要分号等符号作分隔符。如果一个宏定义中代码序列太长，一行不够时，可采用续行的方法。续行是在键入回车符之前先键入符号\\，注意回车要紧接在符号\\之后，中间不能插入其它符号，当然代码序列最后一行结束时不能有\\。\r\n\r\n预处理器在处理宏定义时，会对宏进行展开（即`宏替换`）。宏替换首先将源文件中在宏定义随后所有出现的宏名均用其所代表的代码序列替换之，如果是带参数宏则接着将代码序列中的宏形参名替换为宏实参名。宏替换只作代码字符序列的替换工作，不作任何语法的检查，也不作任何的中间计算，一切其它操作都要在替换完后才能进行。如果宏定义不当，错误要到预处理之后的编译阶段才能发现。\r\n\r\n## 条件编译\r\n\r\n一般情况下，在进行编译时对源程序中的每一行都要编译，但是有时希望程序中某一部分内容只在满足一定条件时才进行编译，如果不满足这个条件，就不编译这部分内容，这就是`条件编译`。\r\n\r\n条件编译主要是进行编译时进行有选择的挑选，注释掉一些指定的代码，以达到多个版本控制、防止对文件重复包含的功能。if, #ifndef, #ifdef, #else, #elif, #endif是比较常见条件编译预处理指令，可根据表达式的值或某个特定宏是否被定义来确定编译条件。\r\n\r\n此外，还有 #pragma 指令，它的作用是设定编译器的状态或指示编译器完成一些特定的动作。\r\n\r\n# 编译\r\n\r\n编译过程的第一个步骤称为词法分析（lexical analysis）或扫描（scanning），词法分析器读入组成源程序的字符流，并且将它们组织成有意义的词素的序列，对于每个词素，词法分析器产生一个词法单元（token），传给下一个步骤：语法分析。\r\n\r\n语法分析（syntax analysis）或解析（parsing）是编译的第二个步骤，使用词法单元来创建树形的中间表示，该中间表示给出了词法分析产生的词法单元流的语法结构。一个常用的表示方法是语法树（syntax tree），树中每个内部结点表示一个运算，而该结点的子结点表示该运算的分量。\r\n\r\n接下来是语义分析（semantic analyzer），使用语法树和符号表中的信息来检测源程序是否和语言定义的语义一致。\r\n\r\n在源程序的语法分析和语义分析之后，生成一个明确的低级的或者类机器语言的中间表示。接下来一般会有一个机器无关的代码优化步骤，试图改进中间代码，以便生成更好的目标代码。\r\n\r\n# 汇编\r\n\r\n对于被翻译系统处理的每一个C/C++语言源程序，都将最终经过这一处理而得到相应的目标文件。目标文件中所存放的也就是与源程序等效的目标机器语言代码。目标文件由段组成，通常一个目标文件中至少有两个段：代码段和数据段。\r\n\r\n* 代码段：该段中所包含的主要是程序的指令。该段一般是可读和可执行的，但一般却不可写。\r\n* 数据段：主要存放程序中要用到的各种全局变量或静态的数据。一般数据段都是可读，可写，可执行的。\r\n\r\n# 链接\r\n\r\n链接程序的主要工作就是将有关的目标文件彼此相连接，也即将在一个文件中引用的符号同该符号在另外一个文件中的定义连接起来，使得所有的这些目标文件成为一个能够按操作系统装入执行的统一整体。主要有静态链接和动态链接两种方式：\r\n\r\n* `静态链接`：在链接阶段，会将汇编生成的目标文件.o与引用到的库一起链接打包到可执行文件中，程序运行的时候不再需要静态库文件。\r\n* `动态链接`：把调用的函数所在文件模块（DLL）和调用函数在文件中的位置等信息链接进目标程序，程序运行的时候再从DLL中寻找相应函数代码，因此需要相应DLL文件的支持。  \r\n\r\n这里的库是写好的现有的，成熟的，可以复用的代码。现实中每个程序都要依赖很多基础的底层库，不可能每个人的代码都从零开始，因此库的存在意义非同寻常。本质上来说库是一种可执行代码的二进制形式，可以被操作系统载入内存执行。库有两种：静态库（.a、.lib）和动态库（.so、.dll），所谓静态、动态是指链接方式的不同。\r\n\r\n静态链接库与动态链接库都是**共享代码**的方式。如果采用静态链接库，程序在运行时与函数库再无瓜葛，移植方便。但是会浪费空间和资源，因为所有相关的目标文件与牵涉到的函数库被链接合成一个可执行文件。此外，静态库对程序的更新、部署和发布也会带来麻烦。如果静态库更新了，所有使用它的应用程序都需要重新编译、发布给用户。\r\n\r\n动态库在程序编译时并不会被连接到目标代码中，而是在程序运行是才被载入。不同的应用程序如果调用相同的库，那么在内存里只需要有一份该共享库的实例，规避了空间浪费问题。动态库在程序运行是才被载入，也解决了静态库对程序的更新、部署和发布页会带来麻烦。用户只需要更新动态库即可，增量更新。\r\n\r\n此外，还要注意静态链接库中不能再包含其他的动态链接库或者静态库，而在动态链接库中还可以再包含其他的动态或静态链接库。\r\n\r\n# 简单的例子\r\n\r\n下面是一个保存在文件 helloworld.cpp 中一个简单的 C++ 程序的代码：\r\n\r\n    /* helloworld.cpp */\r\n    #include <iostream>\r\n    int main(int argc,char *argv[])\r\n    {\r\n        std::cout << \"hello, world\" << std::endl;\r\n        return 0;\r\n    }\r\n\r\n用下面命令编译：\r\n\r\n    $ g++ helloworld.cpp\r\n\r\n编译器 g++ 通过检查命令行中指定的文件的后缀名可识别其为 C++ 源代码文件。编译器默认的动作：编译源代码文件生成对象文件(object file)，链接对象文件和 libstd c++ 库中的函数得到可执行程序，然后删除对象文件。由于命令行中未指定可执行程序的文件名，编译器采用默认的 a.out。\r\n\r\n## 预处理\r\n\r\n选项 -E 使 g++ 将源代码用编译预处理器处理后不再执行其他动作。下面的命令预处理源码文件 helloworld.cpp，并将结果保存在 .ii 文件中：\r\n\r\n    ➜  ~  g++ -E helloworld.cpp -o helloworld.ii\r\n    ➜  ~  ls | grep helloworld\r\n    helloworld.cpp\r\n    helloworld.ii\r\n    ➜  ~  wc -l helloworld.ii\r\n       38126 helloworld.ii\r\n\r\nhelloworld.cpp 的源代码，仅仅有六行，而且该程序除了显示一行文字外什么都不做，但是，预处理后的版本将超过3万行。这主要是因为头文件 iostream 被包含进来，而且它又包含了其他的头文件，除此之外，还有若干个处理输入和输出的类的定义。\r\n\r\n## 编译\r\n\r\n选项 -S 指示编译器将程序编译成汇编代码，输出汇编语言代码而后结束。下面的命令将由 C++ 源码文件生成汇编语言文件 helloworld.s，生成的汇编语言依赖于编译器的目标平台。\r\n\r\n    g++ -S helloworld.cpp\r\n\r\n## 汇编\r\n\r\n选项 -c 用来告诉编译器将汇编代码（.s文件，或者直接对源代码）转换为目标文件，但不要执行链接。输出结果为对象文件，文件默认名与源码文件名相同，只是将其后缀变为 .o。\r\n\r\n    ➜  ~  g++ -c helloworld.s\r\n    ➜  ~  ls |grep helloworld.o\r\n    helloworld.o\r\n\r\n\r\n## 链接\r\n\r\n加载相应的库，执行链接操作，将对象文件（.o，也可以直接将原文件）转化成可执行程序。\r\n\r\n    ➜  ~  g++ helloworld.o -o helloworld.o\r\n    ➜  ~  ./helloworld.o\r\n    hello, world\r\n\r\n\r\n# 更多阅读\r\n  \r\n[详解C/C++预处理器](http://blog.csdn.net/huang_xw/article/details/7648117)  \r\n[Compiling Cpp](http://wiki.ubuntu.org.cn/Compiling_Cpp)  \r\n[C++静态库与动态库](http://www.cnblogs.com/skynet/p/3372855.html)  \r\n[高级语言的编译：链接及装载过程介绍](http://tech.meituan.com/linker.html)    \r\n[编译原理 (预处理>编译>汇编>链接)](http://www.cnblogs.com/pipicfan/archive/2012/07/10/2583910.html)  \r\n\r\n',0,'2016-10-15 15:37:18'),(7,'C++ 编译过程','简单地说，一个编译器就是一个程序，它可以阅读以某一种语言（源语言）编写的程序，并把该程序翻译成一个等价的、用另一种语言（目标语言）编写的程序。\r\n\r\nC/C++编译系统将一个程序转化为可执行程序的过程包含：\r\n\r\n* 预处理(preprocessing)：根据已放置的文件中的预处理指令来修改源文件的内容。\r\n* 编译(compilation)：通过词法分析和语法分析，在确认所有指令都是符合语法规则之后，将其翻译成等价的中间代码表示或汇编代码。\r\n* 汇编(assembly)：把汇编语言代码翻译成目标机器指令的过程。\r\n* 链接(linking)：找到所有用到的函数所在的目标文件，并把它们链接在一起合成为可执行文件(executable file)。\r\n\r\n# 预处理\r\n\r\n预处理器是在程序源文件被编译之前根据预处理指令对程序源文件进行处理的程序。**预处理器指令以#号开头标识，末尾不包含分号**。预处理命令不是C/C++语言本身的组成部分，不能直接对它们进行编译和链接。C/C++语言的一个重要功能是可以使用预处理指令和具有预处理的功能。C/C++提供的预处理功能主要有文件包含、宏替换、条件编译等。\r\n\r\n## 文件包含\r\n\r\n预处理指令 #include 用于包含头文件，有两种形式：#include <xxx.h>，#include \"xxx.h\"。\r\n\r\n尖括号形式表示被包含的文件在系统目录中。如果被包含的文件不一定在系统目录中，应该用双引号形式。在双引号形式中可以指出文件路径和文件名。如果在双引号中没有给出绝对路径，则默认为用户当前目录中的文件，此时系统首先在用户当前目录中寻找要包含的文件，若找不到再在系统目录中查找。\r\n\r\n对于用户自己编写的头文件，宜用双引号形式。对于系统提供的头文件，既可以用尖括号形式，也可以用双引号形式，都能找到被包含的文件，但显然用尖括号形式更直截了当，效率更高。\r\n\r\n## 宏替换\r\n\r\n`宏定义`：一般用一个短的名字代表一个长的代码序列。宏定义包括无参数宏定义和带参数宏定义两类。宏名和宏参数所代表的代码序列可以是任何意义的内容，如类型、常量、变量、操作符、表达式、语句、函数、代码块等。\r\n\r\n宏定义在源文件中必须单独另起一行，换行符是宏定义的结束标志，因此宏定义以换行结束，不需要分号等符号作分隔符。如果一个宏定义中代码序列太长，一行不够时，可采用续行的方法。续行是在键入回车符之前先键入符号\\，注意回车要紧接在符号\\之后，中间不能插入其它符号，当然代码序列最后一行结束时不能有\\。\r\n\r\n预处理器在处理宏定义时，会对宏进行展开（即`宏替换`）。宏替换首先将源文件中在宏定义随后所有出现的宏名均用其所代表的代码序列替换之，如果是带参数宏则接着将代码序列中的宏形参名替换为宏实参名。宏替换只作代码字符序列的替换工作，不作任何语法的检查，也不作任何的中间计算，一切其它操作都要在替换完后才能进行。如果宏定义不当，错误要到预处理之后的编译阶段才能发现。\r\n\r\n## 条件编译\r\n\r\n一般情况下，在进行编译时对源程序中的每一行都要编译，但是有时希望程序中某一部分内容只在满足一定条件时才进行编译，如果不满足这个条件，就不编译这部分内容，这就是`条件编译`。\r\n\r\n条件编译主要是进行编译时进行有选择的挑选，注释掉一些指定的代码，以达到多个版本控制、防止对文件重复包含的功能。if, #ifndef, #ifdef, #else, #elif, #endif是比较常见条件编译预处理指令，可根据表达式的值或某个特定宏是否被定义来确定编译条件。\r\n\r\n此外，还有 #pragma 指令，它的作用是设定编译器的状态或指示编译器完成一些特定的动作。\r\n\r\n# 编译\r\n\r\n编译过程的第一个步骤称为词法分析（lexical analysis）或扫描（scanning），词法分析器读入组成源程序的字符流，并且将它们组织成有意义的词素的序列，对于每个词素，词法分析器产生一个词法单元（token），传给下一个步骤：语法分析。\r\n\r\n语法分析（syntax analysis）或解析（parsing）是编译的第二个步骤，使用词法单元来创建树形的中间表示，该中间表示给出了词法分析产生的词法单元流的语法结构。一个常用的表示方法是语法树（syntax tree），树中每个内部结点表示一个运算，而该结点的子结点表示该运算的分量。\r\n\r\n接下来是语义分析（semantic analyzer），使用语法树和符号表中的信息来检测源程序是否和语言定义的语义一致。\r\n\r\n在源程序的语法分析和语义分析之后，生成一个明确的低级的或者类机器语言的中间表示。接下来一般会有一个机器无关的代码优化步骤，试图改进中间代码，以便生成更好的目标代码。\r\n\r\n# 汇编\r\n\r\n对于被翻译系统处理的每一个C/C++语言源程序，都将最终经过这一处理而得到相应的目标文件。目标文件中所存放的也就是与源程序等效的目标机器语言代码。目标文件由段组成，通常一个目标文件中至少有两个段：代码段和数据段。\r\n\r\n* 代码段：该段中所包含的主要是程序的指令。该段一般是可读和可执行的，但一般却不可写。\r\n* 数据段：主要存放程序中要用到的各种全局变量或静态的数据。一般数据段都是可读，可写，可执行的。\r\n\r\n# 链接\r\n\r\n链接程序的主要工作就是将有关的目标文件彼此相连接，也即将在一个文件中引用的符号同该符号在另外一个文件中的定义连接起来，使得所有的这些目标文件成为一个能够按操作系统装入执行的统一整体。主要有静态链接和动态链接两种方式：\r\n\r\n* `静态链接`：在链接阶段，会将汇编生成的目标文件.o与引用到的库一起链接打包到可执行文件中，程序运行的时候不再需要静态库文件。\r\n* `动态链接`：把调用的函数所在文件模块（DLL）和调用函数在文件中的位置等信息链接进目标程序，程序运行的时候再从DLL中寻找相应函数代码，因此需要相应DLL文件的支持。  \r\n\r\n这里的库是写好的现有的，成熟的，可以复用的代码。现实中每个程序都要依赖很多基础的底层库，不可能每个人的代码都从零开始，因此库的存在意义非同寻常。本质上来说库是一种可执行代码的二进制形式，可以被操作系统载入内存执行。库有两种：静态库（.a、.lib）和动态库（.so、.dll），所谓静态、动态是指链接方式的不同。\r\n\r\n静态链接库与动态链接库都是**共享代码**的方式。如果采用静态链接库，程序在运行时与函数库再无瓜葛，移植方便。但是会浪费空间和资源，因为所有相关的目标文件与牵涉到的函数库被链接合成一个可执行文件。此外，静态库对程序的更新、部署和发布也会带来麻烦。如果静态库更新了，所有使用它的应用程序都需要重新编译、发布给用户。\r\n\r\n动态库在程序编译时并不会被连接到目标代码中，而是在程序运行是才被载入。不同的应用程序如果调用相同的库，那么在内存里只需要有一份该共享库的实例，规避了空间浪费问题。动态库在程序运行是才被载入，也解决了静态库对程序的更新、部署和发布页会带来麻烦。用户只需要更新动态库即可，增量更新。\r\n\r\n此外，还要注意静态链接库中不能再包含其他的动态链接库或者静态库，而在动态链接库中还可以再包含其他的动态或静态链接库。\r\n\r\n# 简单的例子\r\n\r\n下面是一个保存在文件 helloworld.cpp 中一个简单的 C++ 程序的代码：\r\n\r\n    /* helloworld.cpp */\r\n    #include <iostream>\r\n    int main(int argc,char *argv[])\r\n    {\r\n        std::cout << \"hello, world\" << std::endl;\r\n        return 0;\r\n    }\r\n\r\n用下面命令编译：\r\n\r\n    $ g++ helloworld.cpp\r\n\r\n编译器 g++ 通过检查命令行中指定的文件的后缀名可识别其为 C++ 源代码文件。编译器默认的动作：编译源代码文件生成对象文件(object file)，链接对象文件和 libstd c++ 库中的函数得到可执行程序，然后删除对象文件。由于命令行中未指定可执行程序的文件名，编译器采用默认的 a.out。\r\n\r\n## 预处理\r\n\r\n选项 -E 使 g++ 将源代码用编译预处理器处理后不再执行其他动作。下面的命令预处理源码文件 helloworld.cpp，并将结果保存在 .ii 文件中：\r\n\r\n    ➜  ~  g++ -E helloworld.cpp -o helloworld.ii\r\n    ➜  ~  ls | grep helloworld\r\n    helloworld.cpp\r\n    helloworld.ii\r\n    ➜  ~  wc -l helloworld.ii\r\n       38126 helloworld.ii\r\n\r\nhelloworld.cpp 的源代码，仅仅有六行，而且该程序除了显示一行文字外什么都不做，但是，预处理后的版本将超过3万行。这主要是因为头文件 iostream 被包含进来，而且它又包含了其他的头文件，除此之外，还有若干个处理输入和输出的类的定义。\r\n\r\n## 编译\r\n\r\n选项 -S 指示编译器将程序编译成汇编代码，输出汇编语言代码而后结束。下面的命令将由 C++ 源码文件生成汇编语言文件 helloworld.s，生成的汇编语言依赖于编译器的目标平台。\r\n\r\n    g++ -S helloworld.cpp\r\n\r\n## 汇编\r\n\r\n选项 -c 用来告诉编译器将汇编代码（.s文件，或者直接对源代码）转换为目标文件，但不要执行链接。输出结果为对象文件，文件默认名与源码文件名相同，只是将其后缀变为 .o。\r\n\r\n    ➜  ~  g++ -c helloworld.s\r\n    ➜  ~  ls |grep helloworld.o\r\n    helloworld.o\r\n\r\n\r\n## 链接\r\n\r\n加载相应的库，执行链接操作，将对象文件（.o，也可以直接将原文件）转化成可执行程序。\r\n\r\n    ➜  ~  g++ helloworld.o -o helloworld.o\r\n    ➜  ~  ./helloworld.o\r\n    hello, world\r\n\r\n\r\n# 更多阅读\r\n  \r\n[详解C/C++预处理器](http://blog.csdn.net/huang_xw/article/details/7648117)  \r\n[Compiling Cpp](http://wiki.ubuntu.org.cn/Compiling_Cpp)  \r\n[C++静态库与动态库](http://www.cnblogs.com/skynet/p/3372855.html)  \r\n[高级语言的编译：链接及装载过程介绍](http://tech.meituan.com/linker.html)    \r\n[编译原理 (预处理>编译>汇编>链接)](http://www.cnblogs.com/pipicfan/archive/2012/07/10/2583910.html)  \r\n\r\n',0,'2016-10-15 16:03:05'),(8,'C++ 编译过程','简单地说，一个编译器就是一个程序，它可以阅读以某一种语言（源语言）编写的程序，并把该程序翻译成一个等价的、用另一种语言（目标语言）编写的程序。\r\n\r\nC/C++编译系统将一个程序转化为可执行程序的过程包含：\r\n\r\n* 预处理(preprocessing)：根据已放置的文件中的预处理指令来修改源文件的内容。\r\n* 编译(compilation)：通过词法分析和语法分析，在确认所有指令都是符合语法规则之后，将其翻译成等价的中间代码表示或汇编代码。\r\n* 汇编(assembly)：把汇编语言代码翻译成目标机器指令的过程。\r\n* 链接(linking)：找到所有用到的函数所在的目标文件，并把它们链接在一起合成为可执行文件(executable file)。\r\n\r\n# 预处理\r\n\r\n预处理器是在程序源文件被编译之前根据预处理指令对程序源文件进行处理的程序。**预处理器指令以#号开头标识，末尾不包含分号**。预处理命令不是C/C++语言本身的组成部分，不能直接对它们进行编译和链接。C/C++语言的一个重要功能是可以使用预处理指令和具有预处理的功能。C/C++提供的预处理功能主要有文件包含、宏替换、条件编译等。\r\n\r\n## 文件包含\r\n\r\n预处理指令 #include 用于包含头文件，有两种形式：#include <xxx.h>，#include \"xxx.h\"。\r\n\r\n尖括号形式表示被包含的文件在系统目录中。如果被包含的文件不一定在系统目录中，应该用双引号形式。在双引号形式中可以指出文件路径和文件名。如果在双引号中没有给出绝对路径，则默认为用户当前目录中的文件，此时系统首先在用户当前目录中寻找要包含的文件，若找不到再在系统目录中查找。\r\n\r\n对于用户自己编写的头文件，宜用双引号形式。对于系统提供的头文件，既可以用尖括号形式，也可以用双引号形式，都能找到被包含的文件，但显然用尖括号形式更直截了当，效率更高。\r\n\r\n## 宏替换\r\n\r\n`宏定义`：一般用一个短的名字代表一个长的代码序列。宏定义包括无参数宏定义和带参数宏定义两类。宏名和宏参数所代表的代码序列可以是任何意义的内容，如类型、常量、变量、操作符、表达式、语句、函数、代码块等。\r\n\r\n宏定义在源文件中必须单独另起一行，换行符是宏定义的结束标志，因此宏定义以换行结束，不需要分号等符号作分隔符。如果一个宏定义中代码序列太长，一行不够时，可采用续行的方法。续行是在键入回车符之前先键入符号\\，注意回车要紧接在符号\\之后，中间不能插入其它符号，当然代码序列最后一行结束时不能有\\。\r\n\r\n预处理器在处理宏定义时，会对宏进行展开（即`宏替换`）。宏替换首先将源文件中在宏定义随后所有出现的宏名均用其所代表的代码序列替换之，如果是带参数宏则接着将代码序列中的宏形参名替换为宏实参名。宏替换只作代码字符序列的替换工作，不作任何语法的检查，也不作任何的中间计算，一切其它操作都要在替换完后才能进行。如果宏定义不当，错误要到预处理之后的编译阶段才能发现。\r\n\r\n## 条件编译\r\n\r\n一般情况下，在进行编译时对源程序中的每一行都要编译，但是有时希望程序中某一部分内容只在满足一定条件时才进行编译，如果不满足这个条件，就不编译这部分内容，这就是`条件编译`。\r\n\r\n条件编译主要是进行编译时进行有选择的挑选，注释掉一些指定的代码，以达到多个版本控制、防止对文件重复包含的功能。if, #ifndef, #ifdef, #else, #elif, #endif是比较常见条件编译预处理指令，可根据表达式的值或某个特定宏是否被定义来确定编译条件。\r\n\r\n此外，还有 #pragma 指令，它的作用是设定编译器的状态或指示编译器完成一些特定的动作。\r\n\r\n# 编译\r\n\r\n编译过程的第一个步骤称为词法分析（lexical analysis）或扫描（scanning），词法分析器读入组成源程序的字符流，并且将它们组织成有意义的词素的序列，对于每个词素，词法分析器产生一个词法单元（token），传给下一个步骤：语法分析。\r\n\r\n语法分析（syntax analysis）或解析（parsing）是编译的第二个步骤，使用词法单元来创建树形的中间表示，该中间表示给出了词法分析产生的词法单元流的语法结构。一个常用的表示方法是语法树（syntax tree），树中每个内部结点表示一个运算，而该结点的子结点表示该运算的分量。\r\n\r\n接下来是语义分析（semantic analyzer），使用语法树和符号表中的信息来检测源程序是否和语言定义的语义一致。\r\n\r\n在源程序的语法分析和语义分析之后，生成一个明确的低级的或者类机器语言的中间表示。接下来一般会有一个机器无关的代码优化步骤，试图改进中间代码，以便生成更好的目标代码。\r\n\r\n# 汇编\r\n\r\n对于被翻译系统处理的每一个C/C++语言源程序，都将最终经过这一处理而得到相应的目标文件。目标文件中所存放的也就是与源程序等效的目标机器语言代码。目标文件由段组成，通常一个目标文件中至少有两个段：代码段和数据段。\r\n\r\n* 代码段：该段中所包含的主要是程序的指令。该段一般是可读和可执行的，但一般却不可写。\r\n* 数据段：主要存放程序中要用到的各种全局变量或静态的数据。一般数据段都是可读，可写，可执行的。\r\n\r\n# 链接\r\n\r\n链接程序的主要工作就是将有关的目标文件彼此相连接，也即将在一个文件中引用的符号同该符号在另外一个文件中的定义连接起来，使得所有的这些目标文件成为一个能够按操作系统装入执行的统一整体。主要有静态链接和动态链接两种方式：\r\n\r\n* `静态链接`：在链接阶段，会将汇编生成的目标文件.o与引用到的库一起链接打包到可执行文件中，程序运行的时候不再需要静态库文件。\r\n* `动态链接`：把调用的函数所在文件模块（DLL）和调用函数在文件中的位置等信息链接进目标程序，程序运行的时候再从DLL中寻找相应函数代码，因此需要相应DLL文件的支持。  \r\n\r\n这里的库是写好的现有的，成熟的，可以复用的代码。现实中每个程序都要依赖很多基础的底层库，不可能每个人的代码都从零开始，因此库的存在意义非同寻常。本质上来说库是一种可执行代码的二进制形式，可以被操作系统载入内存执行。库有两种：静态库（.a、.lib）和动态库（.so、.dll），所谓静态、动态是指链接方式的不同。\r\n\r\n静态链接库与动态链接库都是**共享代码**的方式。如果采用静态链接库，程序在运行时与函数库再无瓜葛，移植方便。但是会浪费空间和资源，因为所有相关的目标文件与牵涉到的函数库被链接合成一个可执行文件。此外，静态库对程序的更新、部署和发布也会带来麻烦。如果静态库更新了，所有使用它的应用程序都需要重新编译、发布给用户。\r\n\r\n动态库在程序编译时并不会被连接到目标代码中，而是在程序运行是才被载入。不同的应用程序如果调用相同的库，那么在内存里只需要有一份该共享库的实例，规避了空间浪费问题。动态库在程序运行是才被载入，也解决了静态库对程序的更新、部署和发布页会带来麻烦。用户只需要更新动态库即可，增量更新。\r\n\r\n此外，还要注意静态链接库中不能再包含其他的动态链接库或者静态库，而在动态链接库中还可以再包含其他的动态或静态链接库。\r\n\r\n# 简单的例子\r\n\r\n下面是一个保存在文件 helloworld.cpp 中一个简单的 C++ 程序的代码：\r\n\r\n    /* helloworld.cpp */\r\n    #include <iostream>\r\n    int main(int argc,char *argv[])\r\n    {\r\n        std::cout << \"hello, world\" << std::endl;\r\n        return 0;\r\n    }\r\n\r\n用下面命令编译：\r\n\r\n    $ g++ helloworld.cpp\r\n\r\n编译器 g++ 通过检查命令行中指定的文件的后缀名可识别其为 C++ 源代码文件。编译器默认的动作：编译源代码文件生成对象文件(object file)，链接对象文件和 libstd c++ 库中的函数得到可执行程序，然后删除对象文件。由于命令行中未指定可执行程序的文件名，编译器采用默认的 a.out。\r\n\r\n## 预处理\r\n\r\n选项 -E 使 g++ 将源代码用编译预处理器处理后不再执行其他动作。下面的命令预处理源码文件 helloworld.cpp，并将结果保存在 .ii 文件中：\r\n\r\n    ➜  ~  g++ -E helloworld.cpp -o helloworld.ii\r\n    ➜  ~  ls | grep helloworld\r\n    helloworld.cpp\r\n    helloworld.ii\r\n    ➜  ~  wc -l helloworld.ii\r\n       38126 helloworld.ii\r\n\r\nhelloworld.cpp 的源代码，仅仅有六行，而且该程序除了显示一行文字外什么都不做，但是，预处理后的版本将超过3万行。这主要是因为头文件 iostream 被包含进来，而且它又包含了其他的头文件，除此之外，还有若干个处理输入和输出的类的定义。\r\n\r\n## 编译\r\n\r\n选项 -S 指示编译器将程序编译成汇编代码，输出汇编语言代码而后结束。下面的命令将由 C++ 源码文件生成汇编语言文件 helloworld.s，生成的汇编语言依赖于编译器的目标平台。\r\n\r\n    g++ -S helloworld.cpp\r\n\r\n## 汇编\r\n\r\n选项 -c 用来告诉编译器将汇编代码（.s文件，或者直接对源代码）转换为目标文件，但不要执行链接。输出结果为对象文件，文件默认名与源码文件名相同，只是将其后缀变为 .o。\r\n\r\n    ➜  ~  g++ -c helloworld.s\r\n    ➜  ~  ls |grep helloworld.o\r\n    helloworld.o\r\n\r\n\r\n## 链接\r\n\r\n加载相应的库，执行链接操作，将对象文件（.o，也可以直接将原文件）转化成可执行程序。\r\n\r\n    ➜  ~  g++ helloworld.o -o helloworld.o\r\n    ➜  ~  ./helloworld.o\r\n    hello, world\r\n\r\n\r\n# 更多阅读\r\n  \r\n[详解C/C++预处理器](http://blog.csdn.net/huang_xw/article/details/7648117)  \r\n[Compiling Cpp](http://wiki.ubuntu.org.cn/Compiling_Cpp)  \r\n[C++静态库与动态库](http://www.cnblogs.com/skynet/p/3372855.html)  \r\n[高级语言的编译：链接及装载过程介绍](http://tech.meituan.com/linker.html)    \r\n[编译原理 (预处理>编译>汇编>链接)](http://www.cnblogs.com/pipicfan/archive/2012/07/10/2583910.html)  \r\n\r\n',0,'2016-10-15 16:04:00');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice_classifies`
--

DROP TABLE IF EXISTS `choice_classifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `choice_classifies` (
  `choice_id` int(11) DEFAULT NULL,
  `classify_id` int(11) DEFAULT NULL,
  KEY `choice_id` (`choice_id`),
  KEY `classify_id` (`classify_id`),
  CONSTRAINT `choice_classifies_ibfk_1` FOREIGN KEY (`choice_id`) REFERENCES `choices` (`id`),
  CONSTRAINT `choice_classifies_ibfk_2` FOREIGN KEY (`classify_id`) REFERENCES `classifies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice_classifies`
--

LOCK TABLES `choice_classifies` WRITE;
/*!40000 ALTER TABLE `choice_classifies` DISABLE KEYS */;
INSERT INTO `choice_classifies` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(4,1);
/*!40000 ALTER TABLE `choice_classifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choices`
--

DROP TABLE IF EXISTS `choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `detail` text NOT NULL,
  `c_type` tinyint(1) NOT NULL,
  `answer` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choices`
--

LOCK TABLES `choices` WRITE;
/*!40000 ALTER TABLE `choices` DISABLE KEYS */;
INSERT INTO `choices` VALUES (1,'题目 1','A选项;\nB选项;\nC选项;\nD选项; ',0,'A'),(2,'题目 2','A选项;\nB选项;\nC选项;\nD选项; ',0,'D'),(3,'题目 3','A选项;\nB选项;\nC选项;\nD选项; ',1,'A,B,C,D'),(4,'题目 4','A选项;\nB选项;\nC选项;\nD选项; ',1,'A');
/*!40000 ALTER TABLE `choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classifies`
--

DROP TABLE IF EXISTS `classifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classifies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classifies`
--

LOCK TABLES `classifies` WRITE;
/*!40000 ALTER TABLE `classifies` DISABLE KEYS */;
INSERT INTO `classifies` VALUES (1,'MPI'),(2,'并行计算'),(3,'超算特点');
/*!40000 ALTER TABLE `classifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_users`
--

DROP TABLE IF EXISTS `course_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_users` (
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `course_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `course_users_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_users`
--

LOCK TABLES `course_users` WRITE;
/*!40000 ALTER TABLE `course_users` DISABLE KEYS */;
INSERT INTO `course_users` VALUES (1,3),(1,2),(2,1);
/*!40000 ALTER TABLE `course_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `subtitle` varchar(64) DEFAULT NULL,
  `about` text,
  `createdTime` datetime DEFAULT NULL,
  `lessonNum` int(11) NOT NULL,
  `studentNum` int(11) DEFAULT NULL,
  `smallPicture` varchar(64) DEFAULT NULL,
  `middlePicture` varchar(64) DEFAULT NULL,
  `largePicture` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_courses_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'课程1','这是课堂','首先，这个题目问的非常宽泛和庞大。如果要面面俱到的回答，并且解释清楚，恐怕需要专门开一系列的课程来学习。但是这并不妨碍我们去尝试分析这个题目，并且把关键的要点列出来，让大家明白其中核心的东西是什么。\r\n\r\n首先，我们把这个问题分成几个阶段：\r\n\r\n# “复杂”是什么？\r\n\r\n我们来看一些例子（图片来自于网络）：\r\n\r\n![](http://pic2.zhimg.com/70/7da97e11fc74cfbd81f00d59d471c2b5_b.jpg)\r\n\r\n![](http://pic2.zhimg.com/70/4fb20242a0ce2918373966bd9fae4489_b.jpg)\r\n\r\n我们可以看到许多“复杂”的例子，有建筑、有机械结构、有花纹、还有呃……垃圾堆。\r\n\r\n复杂是什么？这个问题当然很重要，虽然这个词看上去很普通——但我们必须要从专业的角度理解它，否则很难以专业的姿态去创造它。然而答案其实并不“复杂”：复杂就是观察对象的元素丰富度达到某一个程度，所形成的视觉心理感受。\r\n\r\n通过照片我们可以看到，上述这些对象中的“复杂”，实际上都是画面中（照片中）元素的复杂。这些元素很可能是由一些单体的模块（元单位，点线面，小元素等）排列组合而成的。它们在平面和空间中的相互排列、堆砌和组合，形成了相对密集的视觉效果。所谓的“复杂”，就是元素的“多”，是细节的“多”，是画面信息的“多”。\r\n\r\n但是很显然，并不是所有的复杂都会给我们带来美好的体验。我们看到的这些复杂的结果，有的好看，有的并不好看。看来只是了解什么是“复杂”并不够，我们还需要知道“好看”的复杂是因为什么。因为如果我们不能通过复杂这样一个表达手段去输出好看的结果，那么我们单纯了解这样一个概念、学习这样一个技巧和方法，可能并没有太大的价值，也就不能在满足要求的前提下输出审美，去为我们的作品增色。','2016-09-20 00:00:00',1,2,'images/course/1.jpg',NULL,NULL),(2,'课程2','第二个课程','这是的哥','2016-09-20 08:00:00',0,1,'images/course/2.jpg',NULL,NULL),(3,'课程3','这是课堂','内容','2016-09-21 00:00:00',1,0,'images/course/3.jpg',NULL,NULL),(4,'课程4','课程 4','内容','2016-09-22 00:00:00',1,0,'images/course/4.jpg',NULL,NULL),(5,'课程5','这是课堂','内容','2016-09-23 01:00:00',1,0,'images/course/5.jpg',NULL,NULL),(6,'课程6','这是课堂','内容','2016-09-29 01:00:00',0,0,'images/course/6.jpg',NULL,NULL),(7,'课程7','这是课堂7','内容','2016-09-29 08:00:00',0,0,'images/course/7.jpg',NULL,NULL),(8,'课程8','这是课堂8','内容','2016-09-29 10:00:00',0,0,'images/course/8.jpg',NULL,NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_members`
--

DROP TABLE IF EXISTS `group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_members` (
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `group_members_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `group_members_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_members`
--

LOCK TABLES `group_members` WRITE;
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
INSERT INTO `group_members` VALUES (2,2),(3,1),(4,1),(1,1);
/*!40000 ALTER TABLE `group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `about` text NOT NULL,
  `logo` varchar(128) DEFAULT NULL,
  `memberNum` int(11) DEFAULT NULL,
  `topicNum` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'c++讨论','这里讨论 C++ 的基础知识，欢迎一起来讨论啊！','/static/images/group/1.jpg',1,4,'2016-09-20 00:00:00'),(2,'意见反馈','反馈给站点的意见','/static/images/group/2.jpg',1,0,'2016-08-20 00:00:00'),(3,'学习交流','在这里交流学习的心得体会','/static/images/group/3.jpg',0,1,'2016-10-20 00:00:00'),(4,'使用指南','网站使用指南','/static/images/group/4.jpg',1,2,'2016-09-20 00:00:00'),(5,'课程推荐','优秀课程推荐','/static/images/group/5.jpg',0,0,'2016-10-10 00:00:00'),(6,'并行运算','并行运算课程群','/static/images/group/6.jpg',0,0,'2016-09-20 00:00:00');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lessons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `content` text,
  `courseId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courseId` (`courseId`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,1,'课时1-1','测试',1),(2,2,'课时1-2','新的课程',1),(3,1,'开始1','NULL可好吃呢个',2),(4,3,'课时1-3','内容为空',1),(5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `uri` varchar(64) DEFAULT NULL,
  `lessonId` int(11) DEFAULT NULL,
  `m_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lessonId` (`lessonId`),
  CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`lessonId`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'视频资源测试','...',1,'video'),(2,'音频资源','12',1,'audio');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) NOT NULL,
  `topicID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topicID` (`topicID`),
  KEY `userID` (`userID`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`topicID`) REFERENCES `topics` (`id`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'内容不错',1,1,'2016-09-10 00:00:00'),(2,'坐等下篇',1,1,'2016-10-10 00:00:00'),(3,'1212',1,1,'2016-10-15 17:07:45'),(4,'@<a href=\"/user/1/\" class=\"mention\">root</a>  测试一下评论',1,1,'2016-10-15 19:36:58'),(5,'新的评论啊',1,1,'2016-10-15 19:38:39'),(6,'新的话题啊',1,1,'2016-10-15 19:40:29'),(7,'测试评论功能',1,1,'2016-10-15 19:41:35'),(8,'8 评论啊',1,1,'2016-10-15 19:42:07'),(9,'第 9 条 评论',1,1,'2016-10-15 19:42:46'),(10,'第 10 评论',1,1,'2016-10-15 19:44:04'),(19,'1',2,1,'2016-10-15 19:57:59'),(20,'2',2,1,'2016-10-15 19:58:02'),(21,'2',2,1,'2016-10-15 19:58:04'),(22,'3',2,1,'2016-10-15 19:58:08'),(23,'@<a href=\"/user/1/\" class=\"mention\">root</a> ',2,1,'2016-10-15 19:59:17'),(24,'1212',2,1,'2016-10-15 20:00:38'),(25,'433',2,1,'2016-10-15 20:00:49'),(26,'12',2,1,'2016-10-15 20:01:03'),(27,'新的评论测死',2,1,'2016-10-15 20:02:39'),(42,'1',3,1,'2016-10-15 20:28:19'),(43,'2',3,1,'2016-10-15 20:28:22'),(44,'3',3,1,'2016-10-15 20:28:24'),(45,'4',3,1,'2016-10-15 20:29:13'),(46,'4',3,1,'2016-10-15 20:29:17'),(47,'6',3,1,'2016-10-15 20:30:47'),(48,'7',3,1,'2016-10-15 20:30:55'),(49,'11',1,1,'2016-10-15 20:31:11'),(50,'1',4,1,'2016-10-15 20:32:54'),(51,'@<a href=\"/user/1/\" class=\"mention\">root</a> 2',4,1,'2016-10-15 20:35:37'),(52,'@<a href=\"/user/1/\" class=\"mention\">root</a> 3',4,1,'2016-10-15 20:36:23'),(53,'@<a href=\"/user/1/\" class=\"mention\">root</a> 4',4,1,'2016-10-15 20:36:35'),(54,'5',4,1,'2016-10-15 20:44:03'),(55,'212121  @<a href=\"/user/1/\" class=\"mention\">root</a> @<a href=\"/user/1/\" class=\"mention\">root</a> ',4,1,'2016-10-15 20:45:05'),(56,'@<a href=\"/user/1/\" class=\"mention\">root</a> 22',1,1,'2016-10-15 22:56:07'),(57,'1',5,1,'2016-10-16 16:24:45'),(58,'2',5,1,'2016-10-16 17:16:02'),(59,'12',6,1,'2016-10-16 22:50:36'),(60,'2',6,1,'2016-10-16 22:50:39');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `detail` text NOT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `acceptedNum` int(11) DEFAULT NULL,
  `submitNum` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (1,'A+B','# 描述\n求两个整数A+B的和\n\n# 输入\n输入包含多组数据。  \n每组数据包含两个整数A(1 ≤ A ≤ 100)和B(1 ≤ B ≤ 100)。\n\n# 输出\n对于每组数据输出A+B的和。\n\n# 样例输入\n\n```\n1 2\n3 4\n```\n\n# 样例输出\n\n```\n3\n7\n```',1,12,23,'2016-10-24 00:00:00'),(2,'Trie树','# 描述\n\n小Hi和小Ho是一对好朋友，出生在信息化社会的他们对编程产生了莫大的兴趣，他们约定好互相帮助，在编程的学习道路上一同前进。\n\n这一天，他们遇到了一本词典，于是小Hi就向小Ho提出了那个经典的问题：“小Ho，你能不能对于每一个我给出的字符串，都在这个词典里面找到以这个字符串开头的所有单词呢？”\n\n身经百战的小Ho答道：“怎么会不能呢！你每给我一个字符串，我就依次遍历词典里的所有单词，检查你给我的字符串是不是这个单词的前缀不就是了？”\n\n小Hi笑道：“你啊，还是太年轻了！~假设这本词典里有10万个单词，我询问你一万次，你得要算到哪年哪月去？”\n\n小Ho低头算了一算，看着那一堆堆的0，顿时感觉自己这辈子都要花在上面了...\n\n小Hi看着小Ho的囧样，也是继续笑道：“让我来提高一下你的知识水平吧~你知道树这样一种数据结构么？”\n\n小Ho想了想，说道：“知道~它是一种基础的数据结构，就像这里说的一样！”\n\n小Hi满意的点了点头，说道：“那你知道我怎么样用一棵树来表示整个词典么？”\n\n小Ho摇摇头表示自己不清楚。\n\n[提示一：Trie树的建立](http://hihocoder.com/problemset/problem/1014#)\n\n“你看，我们现在得到了这样一棵树，那么你看，如果我给你一个字符串ap，你要怎么找到所有以ap开头的单词呢？”小Hi又开始考校小Ho。\n\n“唔...一个个遍历所有的单词？”小Ho还是不忘自己最开始提出来的算法。\n\n“笨！这棵树难道就白构建了！”小Hi教训完小Ho，继续道：“看好了！”\n\n[提示二：如何使用Trie树](http://hihocoder.com/problemset/problem/1014#)\n\n[提示三：在建立Trie树时同时进行统计！](http://hihocoder.com/problemset/problem/1014#)\n\n“那么现在！赶紧去用代码实现吧！”小Hi如是说道\n\n输入\n输入的第一行为一个正整数n，表示词典的大小，其后n行，每一行一个单词（不保证是英文单词，也有可能是火星文单词哦），单词由不超过10个的小写英文字母组成，可能存在相同的单词，此时应将其视作不同的单词。接下来的一行为一个正整数m，表示小Hi询问的次数，其后m行，每一行一个字符串，该字符串由不超过10个的小写英文字母组成，表示小Hi的一个询问。\n\n在20%的数据中n, m<=10，词典的字母表大小<=2.\n\n在60%的数据中n, m<=1000，词典的字母表大小<=5.\n\n在100%的数据中n, m<=100000，词典的字母表大小<=26.\n\n\n# 输出\n\n对于小Hi的每一个询问，输出一个整数Ans,表示词典中以小Hi给出的字符串为前缀的单词的个数。\n\n# 样例输入\n```\n5\nbabaab\nbabbbaaaa\nabba\naaaaabaa\nbabaababb\n5\nbabb\nbaabaaa\nbab\nbb\nbbabbaab\n```\n\n# 样例输出\n```\n1\n0\n3\n0\n0\n```',3,1,100,NULL);
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `visitNum` int(11) DEFAULT NULL,
  `postNum` int(11) DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupID` (`groupID`),
  KEY `userID` (`userID`),
  CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `groups` (`id`),
  CONSTRAINT `topics_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'C++ 编译流程','简单地说，一个编译器就是一个程序，它可以阅读以某一种语言（源语言）编写的程序，并把该程序翻译成一个等价的、用另一种语言（目标语言）编写的程序。\r\n\r\nC/C++编译系统将一个程序转化为可执行程序的过程包含：\r\n\r\n* 预处理(preprocessing)：根据已放置的文件中的预处理指令来修改源文件的内容。\r\n* 编译(compilation)：通过词法分析和语法分析，在确认所有指令都是符合语法规则之后，将其翻译成等价的中间代码表示或汇编代码。\r\n* 汇编(assembly)：把汇编语言代码翻译成目标机器指令的过程。\r\n* 链接(linking)：找到所有用到的函数所在的目标文件，并把它们链接在一起合成为可执行文件(executable file)。\r\n\r\n# 预处理\r\n\r\n预处理器是在程序源文件被编译之前根据预处理指令对程序源文件进行处理的程序。**预处理器指令以#号开头标识，末尾不包含分号**。预处理命令不是C/C++语言本身的组成部分，不能直接对它们进行编译和链接。C/C++语言的一个重要功能是可以使用预处理指令和具有预处理的功能。C/C++提供的预处理功能主要有文件包含、宏替换、条件编译等。\r\n\r\n## 文件包含\r\n\r\n预处理指令 #include 用于包含头文件，有两种形式：#include <xxx.h>，#include \"xxx.h\"。\r\n\r\n尖括号形式表示被包含的文件在系统目录中。如果被包含的文件不一定在系统目录中，应该用双引号形式。在双引号形式中可以指出文件路径和文件名。如果在双引号中没有给出绝对路径，则默认为用户当前目录中的文件，此时系统首先在用户当前目录中寻找要包含的文件，若找不到再在系统目录中查找。\r\n\r\n对于用户自己编写的头文件，宜用双引号形式。对于系统提供的头文件，既可以用尖括号形式，也可以用双引号形式，都能找到被包含的文件，但显然用尖括号形式更直截了当，效率更高。\r\n\r\n## 宏替换\r\n\r\n`宏定义`：一般用一个短的名字代表一个长的代码序列。宏定义包括无参数宏定义和带参数宏定义两类。宏名和宏参数所代表的代码序列可以是任何意义的内容，如类型、常量、变量、操作符、表达式、语句、函数、代码块等。\r\n\r\n宏定义在源文件中必须单独另起一行，换行符是宏定义的结束标志，因此宏定义以换行结束，不需要分号等符号作分隔符。如果一个宏定义中代码序列太长，一行不够时，可采用续行的方法。续行是在键入回车符之前先键入符号\\，注意回车要紧接在符号\\之后，中间不能插入其它符号，当然代码序列最后一行结束时不能有\\。\r\n\r\n预处理器在处理宏定义时，会对宏进行展开（即`宏替换`）。宏替换首先将源文件中在宏定义随后所有出现的宏名均用其所代表的代码序列替换之，如果是带参数宏则接着将代码序列中的宏形参名替换为宏实参名。宏替换只作代码字符序列的替换工作，不作任何语法的检查，也不作任何的中间计算，一切其它操作都要在替换完后才能进行。如果宏定义不当，错误要到预处理之后的编译阶段才能发现。\r\n\r\n## 条件编译\r\n\r\n一般情况下，在进行编译时对源程序中的每一行都要编译，但是有时希望程序中某一部分内容只在满足一定条件时才进行编译，如果不满足这个条件，就不编译这部分内容，这就是`条件编译`。\r\n\r\n条件编译主要是进行编译时进行有选择的挑选，注释掉一些指定的代码，以达到多个版本控制、防止对文件重复包含的功能。if, #ifndef, #ifdef, #else, #elif, #endif是比较常见条件编译预处理指令，可根据表达式的值或某个特定宏是否被定义来确定编译条件。\r\n\r\n此外，还有 #pragma 指令，它的作用是设定编译器的状态或指示编译器完成一些特定的动作。\r\n\r\n# 编译\r\n\r\n编译过程的第一个步骤称为词法分析（lexical analysis）或扫描（scanning），词法分析器读入组成源程序的字符流，并且将它们组织成有意义的词素的序列，对于每个词素，词法分析器产生一个词法单元（token），传给下一个步骤：语法分析。\r\n\r\n语法分析（syntax analysis）或解析（parsing）是编译的第二个步骤，使用词法单元来创建树形的中间表示，该中间表示给出了词法分析产生的词法单元流的语法结构。一个常用的表示方法是语法树（syntax tree），树中每个内部结点表示一个运算，而该结点的子结点表示该运算的分量。\r\n\r\n接下来是语义分析（semantic analyzer），使用语法树和符号表中的信息来检测源程序是否和语言定义的语义一致。\r\n\r\n在源程序的语法分析和语义分析之后，生成一个明确的低级的或者类机器语言的中间表示。接下来一般会有一个机器无关的代码优化步骤，试图改进中间代码，以便生成更好的目标代码。\r\n\r\n# 汇编\r\n\r\n对于被翻译系统处理的每一个C/C++语言源程序，都将最终经过这一处理而得到相应的目标文件。目标文件中所存放的也就是与源程序等效的目标机器语言代码。目标文件由段组成，通常一个目标文件中至少有两个段：代码段和数据段。\r\n\r\n* 代码段：该段中所包含的主要是程序的指令。该段一般是可读和可执行的，但一般却不可写。\r\n* 数据段：主要存放程序中要用到的各种全局变量或静态的数据。一般数据段都是可读，可写，可执行的。\r\n\r\n# 链接\r\n\r\n链接程序的主要工作就是将有关的目标文件彼此相连接，也即将在一个文件中引用的符号同该符号在另外一个文件中的定义连接起来，使得所有的这些目标文件成为一个能够按操作系统装入执行的统一整体。主要有静态链接和动态链接两种方式：\r\n\r\n* `静态链接`：在链接阶段，会将汇编生成的目标文件.o与引用到的库一起链接打包到可执行文件中，程序运行的时候不再需要静态库文件。\r\n* `动态链接`：把调用的函数所在文件模块（DLL）和调用函数在文件中的位置等信息链接进目标程序，程序运行的时候再从DLL中寻找相应函数代码，因此需要相应DLL文件的支持。  \r\n\r\n这里的库是写好的现有的，成熟的，可以复用的代码。现实中每个程序都要依赖很多基础的底层库，不可能每个人的代码都从零开始，因此库的存在意义非同寻常。本质上来说库是一种可执行代码的二进制形式，可以被操作系统载入内存执行。库有两种：静态库（.a、.lib）和动态库（.so、.dll），所谓静态、动态是指链接方式的不同。\r\n\r\n静态链接库与动态链接库都是**共享代码**的方式。如果采用静态链接库，程序在运行时与函数库再无瓜葛，移植方便。但是会浪费空间和资源，因为所有相关的目标文件与牵涉到的函数库被链接合成一个可执行文件。此外，静态库对程序的更新、部署和发布也会带来麻烦。如果静态库更新了，所有使用它的应用程序都需要重新编译、发布给用户。\r\n\r\n动态库在程序编译时并不会被连接到目标代码中，而是在程序运行是才被载入。不同的应用程序如果调用相同的库，那么在内存里只需要有一份该共享库的实例，规避了空间浪费问题。动态库在程序运行是才被载入，也解决了静态库对程序的更新、部署和发布页会带来麻烦。用户只需要更新动态库即可，增量更新。\r\n\r\n此外，还要注意静态链接库中不能再包含其他的动态链接库或者静态库，而在动态链接库中还可以再包含其他的动态或静态链接库。\r\n\r\n# 简单的例子\r\n\r\n下面是一个保存在文件 helloworld.cpp 中一个简单的 C++ 程序的代码：\r\n\r\n    /* helloworld.cpp */\r\n    #include <iostream>\r\n    int main(int argc,char *argv[])\r\n    {\r\n        std::cout << \"hello, world\" << std::endl;\r\n        return 0;\r\n    }\r\n\r\n用下面命令编译：\r\n\r\n    $ g++ helloworld.cpp\r\n\r\n编译器 g++ 通过检查命令行中指定的文件的后缀名可识别其为 C++ 源代码文件。编译器默认的动作：编译源代码文件生成对象文件(object file)，链接对象文件和 libstd c++ 库中的函数得到可执行程序，然后删除对象文件。由于命令行中未指定可执行程序的文件名，编译器采用默认的 a.out。\r\n\r\n## 预处理\r\n\r\n选项 -E 使 g++ 将源代码用编译预处理器处理后不再执行其他动作。下面的命令预处理源码文件 helloworld.cpp，并将结果保存在 .ii 文件中：\r\n\r\n    ➜  ~  g++ -E helloworld.cpp -o helloworld.ii\r\n    ➜  ~  ls | grep helloworld\r\n    helloworld.cpp\r\n    helloworld.ii\r\n    ➜  ~  wc -l helloworld.ii\r\n       38126 helloworld.ii\r\n\r\nhelloworld.cpp 的源代码，仅仅有六行，而且该程序除了显示一行文字外什么都不做，但是，预处理后的版本将超过3万行。这主要是因为头文件 iostream 被包含进来，而且它又包含了其他的头文件，除此之外，还有若干个处理输入和输出的类的定义。\r\n\r\n## 编译\r\n\r\n选项 -S 指示编译器将程序编译成汇编代码，输出汇编语言代码而后结束。下面的命令将由 C++ 源码文件生成汇编语言文件 helloworld.s，生成的汇编语言依赖于编译器的目标平台。\r\n\r\n    g++ -S helloworld.cpp\r\n\r\n## 汇编\r\n\r\n选项 -c 用来告诉编译器将汇编代码（.s文件，或者直接对源代码）转换为目标文件，但不要执行链接。输出结果为对象文件，文件默认名与源码文件名相同，只是将其后缀变为 .o。\r\n\r\n    ➜  ~  g++ -c helloworld.s\r\n    ➜  ~  ls |grep helloworld.o\r\n    helloworld.o\r\n\r\n\r\n## 链接\r\n\r\n加载相应的库，执行链接操作，将对象文件（.o，也可以直接将原文件）转化成可执行程序。\r\n\r\n    ➜  ~  g++ helloworld.o -o helloworld.o\r\n    ➜  ~  ./helloworld.o\r\n    hello, world\r\n\r\n\r\n# 更多阅读\r\n  \r\n[详解C/C++预处理器](http://blog.csdn.net/huang_xw/article/details/7648117)  \r\n[Compiling Cpp](http://wiki.ubuntu.org.cn/Compiling_Cpp)  \r\n[C++静态库与动态库](http://www.cnblogs.com/skynet/p/3372855.html)  \r\n[高级语言的编译：链接及装载过程介绍](http://tech.meituan.com/linker.html)    \r\n[编译原理 (预处理>编译>汇编>链接)](http://www.cnblogs.com/pipicfan/archive/2012/07/10/2583910.html)  \r\n\r\n',12,12,1,1,'2016-09-20 00:00:00','2016-10-16 00:07:07'),(2,'C++ 声明还是定义','简单来说：\n\n> Declaration is for the compiler to accept a name(to tell the compiler that the name is legal, the name is introduced with intention not a typo).   \n>\n> A variable is declared when the compiler is informed that a variable exists (and this is its type); it does not allocate the storage for the variable at that point.\n>   \n> Definition is where a name and its content is associated. The definition is used by the linker to link a name reference to the content of the name.  \n> \n>A variable is defined when the compiler allocates the storage for the variable.\n\n变量声明（declaration）用来引入标识符，并对它的类型（对象，函数等）进行说明，有了声明语句，`编译器`就可以理解对该标识符的引用。下面的这些都是声明语句：\n\n    extern int bar;\n    extern int g(int, int);\n    double f(int, double); // extern can be omitted for function declarations\n    class foo; // no extern allowed for type declarations\n\n可以重复声明一个变量，所以下面语句是合法的：\n\n    double f(int, double);\n    double f(int, double);\n    extern double f(int, double); // the same as the two above\n    extern double f(int, double);\n\n变量定义（definition）**用于为变量分配存储空间，还可为变量指定初始值**。可以将定义看作是对声明的变量进行实例化，`链接器`需要根据定义来找到变量具体对应的值。下面是前面声明语句对应的定义部分：\n\n    int bar;\n    int g(int lhs, int rhs) {return lhs*rhs;}\n    double f(int i, double d) {return i+d;}\n    class foo {};\n\n程序中，变量必须有且仅有一个定义。\n\n> No translation unit shall contain more than one definition of any variable, function, class type, enumeration type, or template.\n\n重复定义会导致链接器不知道哪一个是需要的，编译器会报错：`redefinition of`。变量缺少定义链接器会因为 `symbol(s) not found` 链接失败。下面代码片段中 b 没有定义，c重复定义：\n\n    extern int a;\n    extern int b;\n    \n    int main(){\n        int a;\n        cout << a << b;\n        int c;\n        int c;\n    }\n\n有时候区别声明和定义还真不是那么简单的，看下面的例子：\n\n```c++\nstruct Test\n{\n    Test(int) {}\n    Test() {}\n    void fun() {}\n};\nvoid main( void )\n{\n    Test a(1);  // 定义了一个对象\n    a.fun();    // 调用对象的函数 \n    Test b();   // 声明了一个函数\n    // b.fun();    // Error！！！\n}\n```',1,9,1,1,'2016-09-20 00:00:00','2016-09-22 00:00:00'),(3,'C++左值还是右值','左值与右值这两概念是从 c 中传承而来的，在 c 中，左值指的是既能够出现在等号左边也能出现在等号右边的变量(或表达式)，右值指的则是只能出现在等号右边的变量(或表达式)。\n\n\n	int a;\n	int b;\n    	\n	a = 3;\n	b = 4;\n	a = b;\n	b = a;\n 	   \n	// 以下写法不合法。\n	3 = a;\n	a+b = 4;\n\n\n在 C 语言中，通常来说有名字的变量就是左值(如上面例子中的 a, b)，而由运算操作(加减乘除，函数调用返回值等)所产生的中间结果(没有名字)就是右值，如上的 3 + 4， a + b 等。可以认为**左值就是在程序中能够寻址的东西，右值就是没法取到它的地址的东西**。\n\n如上概念到了 c++ 中，就变得稍有不同。具体来说，在 c++ 中，`每一个表达式或者是一个左值，或者是一个右值`，相应的，该表达式也就被称作“左值表达式\"，\"右值表达式\"。对于内置的基本数据类型来说(primitive types)，左值右值的概念和 c 没有太多不同，不同的地方在于自定义的类型:\n\n* 对于内置的类型，右值是不可被修改的(non-modifiable)，也不可被 const, volatile 所修饰；\n* 对于自定义的类型(user-defined types)，右值却允许通过它的成员函数进行修改。\n\nC++ 中自定义类型允许有成员函数，而通过右值调用成员函数是被允许的，但成员函数有可能不是 const 类型，因此通过调用右值的成员函数，也就可能会修改了该右值。此外，**右值只能被 const 类型的 reference 所指向**，当一个右值被 const reference 指向时，它的生命周期就被延长了。\n\n具体示例在 [C++_LR_Value](../Coding/C++_LR_Value.cpp)。\n',1,7,3,1,'2016-10-12 00:00:00','2016-10-10 00:00:00'),(4,'引用','\n引用（reference）是c++对c语言的重要扩充，引用就是某一变量（目标）的一个别名，对引用的操作与对变量直接操作完全一样。引用是除指针外另一个可以产生多态效果的手段。这意味着，一个基类的引用可以指向它的派生类实例。引用的定义方法：\n\n    类型标识符 &引用名=目标变量名；\n\n类型标识符是指目标变量的类型，这里的 & 不是求地址运算，而是起标识作用。**在定义引用时，必须同时对其进行初始化**，引用定义完毕后，相当于目标变量名有两个名称，即该目标原名称和引用名，且不能再将该引用指向其它变量。\n\n    int a=2,\n    int &ra=a;\n\na为原变量名称，ra为引用名。给ra赋值：ra=1; 等价于 a=1。对引用求地址，就是对目标变量求地址，因此&ra与&a相等。注意我们**不能建立引用的数组**，因为数组是一个由若干个元素所组成的集合，所以无法建立一个由引用组成的集合。\n\n    int& ref[3]= {2,3,5}; //int& ref[3]= {2,3,5}; //不能声明引用的数组\n    const int (&ref)[3] ={2,3,5};                 // 可以\n\n编译器一般将引用实现为`const指针`，即指向位置不可变的指针，也就是说引用实际上与一般指针同样占用内存，不过我们没有办法获得这个指针的地址。\n',12,6,4,1,'2016-10-10 00:00:00','2016-01-20 00:00:00'),(5,'失败的多态？','下面多态函数调用的输出？\r\n\r\n```\r\nclass B\r\n{\r\npublic:\r\n    virtual void vfun(int i = 10){\r\n        cout << \"B:vfun \" << i << endl;\r\n    }\r\n};\r\n\r\nclass D : public B\r\n{\r\npublic:\r\n    virtual void vfun(int i = 20){\r\n        cout << \"D:vfun \" << i << endl;\r\n    }\r\n};\r\n\r\nint main()\r\n{\r\n    D* pD = new D();\r\n    B* pB = pD;\r\n    pD->vfun();     // D:vfun 20\r\n    pB->vfun();     // D:vfun 10\r\n}\r\n```\r\n\r\n为了解释清楚，先来看四个概念：\r\n\r\n* 对象的静态类型：对象在声明时采用的类型，是在编译期确定的。\r\n* 对象的动态类型：目前所指对象的类型，是在运行期决定的。对象的动态类型可以更改，但是静态类型无法更改。\r\n* 静态绑定：绑定的是对象的静态类型，某些特性依赖于对象的静态类型，发生在编译期。\r\n* 动态绑定：绑定的是对象的动态类型，某些特性（比如多态）依赖于对象的动态类型，发生在运行期。\r\n\r\n假设类B是一个基类，类C继承B，类D继承B，那么：\r\n\r\n    D* pD = new D();//pD的静态类型是它声明的类型D*，动态类型也是D*\r\n    B* pB = pD;     //pB的静态类型是它声明的类型B*，动态类型是pB所指向的对象pD的类型D*\r\n    C* pC = new C();  \r\n    pB = pC;        //pB的动态类型是可以更改的，现在它的动态类型是C*\r\n\r\n只有虚函数才使用的是动态绑定，其他的全部是静态绑定。当缺省参数和虚函数一起出现的时候情况有点复杂，极易出错。虚函数是动态绑定的，但是为了执行效率，**缺省参数是静态绑定的**。\r\n\r\n所以对于上面的例子，pD->vfun()和pB->vfun()调用都是函数D::vfun()，但是缺省参数是静态绑定的，所以 pD->vfun() 时，pD的静态类型是D*，所以它的缺省参数应该是20；同理，pB->vfun()的缺省参数应该是10。\r\n\r\n不是很容易接受是吧，所以`Effective C++ 条款37：绝不要重新定义继承而来的缺省参数`。',0,2,1,1,'2016-10-16 08:24:18','2016-10-16 16:31:19'),(6,'Markdown 语法说明 (简体中文版)','\r\n*   [概述](#overview)\r\n    *   [宗旨](#philosophy)\r\n    *   [兼容 HTML](#html)\r\n    *   [特殊字符自动转换](#autoescape)\r\n*   [区块元素](#block)\r\n    *   [段落和换行](#p)\r\n    *   [标题](#header)\r\n    *   [区块引用](#blockquote)\r\n    *   [列表](#list)\r\n    *   [代码区块](#precode)\r\n    *   [分隔线](#hr)\r\n*   [区段元素](#span)\r\n    *   [链接](#link)\r\n    *   [强调](#em)\r\n    *   [代码](#code)\r\n    *   [图片](#img)\r\n*   [其它](#misc)\r\n    *   [反斜杠](#backslash)\r\n    *   [自动链接](#autolink)\r\n*   [感谢](#acknowledgement)\r\n*	[Markdown 免费编辑器](#editor)\r\n\r\n* * *\r\n\r\n<h2 id=\"overview\">概述</h2>\r\n\r\n<h3 id=\"philosophy\">宗旨</h3>\r\n\r\nMarkdown 的目标是实现「易读易写」。\r\n\r\n可读性，无论如何，都是最重要的。一份使用 Markdown 格式撰写的文件应该可以直接以纯文本发布，并且看起来不会像是由许多标签或是格式指令所构成。Markdown 语法受到一些既有 text-to-HTML 格式的影响，包括 [Setext] [1]、[atx] [2]、[Textile] [3]、[reStructuredText] [4]、[Grutatext] [5] 和 [EtText] [6]，而最大灵感来源其实是纯文本电子邮件的格式。\r\n\r\n  [1]: http://docutils.sourceforge.net/mirror/setext.html\r\n  [2]: http://www.aaronsw.com/2002/atx/\r\n  [3]: http://textism.com/tools/textile/\r\n  [4]: http://docutils.sourceforge.net/rst.html\r\n  [5]: http://www.triptico.com/software/grutatxt.html\r\n  [6]: http://ettext.taint.org/doc/\r\n\r\n总之， Markdown 的语法全由一些符号所组成，这些符号经过精挑细选，其作用一目了然。比如：在文字两旁加上星号，看起来就像\\*强调\\*。Markdown 的列表看起来，嗯，就是列表。Markdown 的区块引用看起来就真的像是引用一段文字，就像你曾在电子邮件中见过的那样。\r\n\r\n<h3 id=\"html\">兼容 HTML</h3>\r\n\r\nMarkdown 语法的目标是：成为一种适用于网络的*书写*语言。\r\n\r\nMarkdown 不是想要取代 HTML，甚至也没有要和它相近，它的语法种类很少，只对应 HTML 标记的一小部分。Markdown 的构想*不是*要使得 HTML 文档更容易书写。在我看来， HTML 已经很容易写了。Markdown 的理念是，能让文档更容易读、写和随意改。HTML 是一种*发布*的格式，Markdown 是一种*书写*的格式。就这样，Markdown 的格式语法只涵盖纯文本可以涵盖的范围。\r\n\r\n不在 Markdown 涵盖范围之内的标签，都可以直接在文档里面用 HTML 撰写。不需要额外标注这是 HTML 或是 Markdown；只要直接加标签就可以了。\r\n\r\n要制约的只有一些 HTML 区块元素――比如 `<div>`、`<table>`、`<pre>`、`<p>` 等标签，必须在前后加上空行与其它内容区隔开，还要求它们的开始标签与结尾标签不能用制表符或空格来缩进。Markdown 的生成器有足够智能，不会在 HTML 区块标签外加上不必要的 `<p>` 标签。\r\n\r\n例子如下，在 Markdown 文件里加上一段 HTML 表格：\r\n\r\n    这是一个普通段落。\r\n\r\n    <table>\r\n        <tr>\r\n            <td>Foo</td>\r\n        </tr>\r\n    </table>\r\n\r\n    这是另一个普通段落。\r\n\r\n请注意，在 HTML 区块标签间的 Markdown 格式语法将不会被处理。比如，你在 HTML 区块内使用 Markdown 样式的`*强调*`会没有效果。\r\n\r\nHTML 的区段（行内）标签如 `<span>`、`<cite>`、`<del>` 可以在 Markdown 的段落、列表或是标题里随意使用。依照个人习惯，甚至可以不用 Markdown 格式，而直接采用 HTML 标签来格式化。举例说明：如果比较喜欢 HTML 的 `<a>` 或 `<img>` 标签，可以直接使用这些标签，而不用 Markdown 提供的链接或是图像标签语法。\r\n\r\n和处在 HTML 区块标签间不同，Markdown 语法在 HTML 区段标签间是有效的。\r\n\r\n<h3 id=\"autoescape\">特殊字符自动转换</h3>\r\n\r\n在 HTML 文件中，有两个字符需要特殊处理： `<` 和 `&` 。 `<` 符号用于起始标签，`&` 符号则用于标记 HTML 实体，如果你只是想要显示这些字符的原型，你必须要使用实体的形式，像是 `&lt;` 和 `&amp;`。\r\n\r\n`&` 字符尤其让网络文档编写者受折磨，如果你要打「`AT&T`」 ，你必须要写成「`AT&amp;T`」。而网址中的 `&` 字符也要转换。比如你要链接到：\r\n\r\n    http://images.google.com/images?num=30&q=larry+bird\r\n\r\n你必须要把网址转换写为：\r\n\r\n    http://images.google.com/images?num=30&amp;q=larry+bird\r\n\r\n才能放到链接标签的 `href` 属性里。不用说也知道这很容易忽略，这也可能是 HTML 标准检验所检查到的错误中，数量最多的。\r\n\r\nMarkdown 让你可以自然地书写字符，需要转换的由它来处理好了。如果你使用的 `&` 字符是 HTML 字符实体的一部分，它会保留原状，否则它会被转换成 `&amp`;。\r\n\r\n所以你如果要在文档中插入一个版权符号 `©`，你可以这样写：\r\n\r\n    &copy;\r\n\r\nMarkdown 会保留它不动。而若你写：\r\n\r\n    AT&T\r\n\r\nMarkdown 就会将它转为：\r\n\r\n    AT&amp;T\r\n\r\n类似的状况也会发生在 `<` 符号上，因为 Markdown 允许 [兼容 HTML](#html) ，如果你是把 `<` 符号作为 HTML 标签的定界符使用，那 Markdown 也不会对它做任何转换，但是如果你写：\r\n\r\n    4 < 5\r\n\r\nMarkdown 将会把它转换为：\r\n\r\n    4 &lt; 5\r\n\r\n不过需要注意的是，code 范围内，不论是行内还是区块， `<` 和 `&` 两个符号都*一定*会被转换成 HTML 实体，这项特性让你可以很容易地用 Markdown 写 HTML code （和 HTML 相对而言， HTML 语法中，你要把所有的 `<` 和 `&` 都转换为 HTML 实体，才能在 HTML 文件里面写出 HTML code。）\r\n\r\n* * *\r\n\r\n<h2 id=\"block\">区块元素</h2>\r\n\r\n\r\n<h3 id=\"p\">段落和换行</h3>\r\n\r\n一个 Markdown 段落是由一个或多个连续的文本行组成，它的前后要有一个以上的空行（空行的定义是显示上看起来像是空的，便会被视为空行。比方说，若某一行只包含空格和制表符，则该行也会被视为空行）。普通段落不该用空格或制表符来缩进。\r\n\r\n「由一个或多个连续的文本行组成」这句话其实暗示了 Markdown 允许段落内的强迫换行（插入换行符），这个特性和其他大部分的 text-to-HTML 格式不一样（包括 Movable Type 的「Convert Line Breaks」选项），其它的格式会把每个换行符都转成 `<br />` 标签。\r\n\r\n如果你*确实*想要依赖 Markdown 来插入 `<br />` 标签的话，在插入处先按入两个以上的空格然后回车。\r\n\r\n的确，需要多费点事（多加空格）来产生 `<br />` ，但是简单地「每个换行都转换为 `<br />`」的方法在 Markdown 中并不适合， Markdown 中 email 式的 [区块引用][bq] 和多段落的 [列表][l] 在使用换行来排版的时候，不但更好用，还更方便阅读。\r\n\r\n  [bq]: #blockquote\r\n  [l]:  #list\r\n\r\n<h3 id=\"header\">标题</h3>\r\n\r\nMarkdown 支持两种标题的语法，类 [Setext] [1] 和类 [atx] [2] 形式。\r\n\r\n类 Setext 形式是用底线的形式，利用 `=` （最高阶标题）和 `-` （第二阶标题），例如：\r\n\r\n    This is an H1\r\n    =============\r\n\r\n    This is an H2\r\n    -------------\r\n\r\n任何数量的 `=` 和 `-` 都可以有效果。\r\n\r\n类 Atx 形式则是在行首插入 1 到 6 个 `#` ，对应到标题 1 到 6 阶，例如：\r\n\r\n    # 这是 H1\r\n\r\n    ## 这是 H2\r\n\r\n    ###### 这是 H6\r\n\r\n你可以选择性地「闭合」类 atx 样式的标题，这纯粹只是美观用的，若是觉得这样看起来比较舒适，你就可以在行尾加上 `#`，而行尾的 `#` 数量也不用和开头一样（行首的井字符数量决定标题的阶数）：\r\n\r\n    # 这是 H1 #\r\n\r\n    ## 这是 H2 ##\r\n\r\n    ### 这是 H3 ######\r\n\r\n\r\n<h3 id=\"blockquote\">区块引用 Blockquotes</h3>\r\n\r\nMarkdown 标记区块引用是使用类似 email 中用 `>` 的引用方式。如果你还熟悉在 email 信件中的引言部分，你就知道怎么在 Markdown 文件中建立一个区块引用，那会看起来像是你自己先断好行，然后在每行的最前面加上 `>` ：\r\n\r\n    > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,\r\n    > consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.\r\n    > Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.\r\n    > \r\n    > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse\r\n    > id sem consectetuer libero luctus adipiscing.\r\n效果就像：\r\n> This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,\r\n> consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.\r\n> Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.\r\n> \r\n> Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse\r\n> id sem consectetuer libero luctus adipiscing.\r\n\r\nMarkdown 也允许你偷懒只在整个段落的第一行最前面加上 `>` ：\r\n\r\n    > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,\r\n    consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.\r\n    Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.\r\n\r\n    > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse\r\n    id sem consectetuer libero luctus adipiscing.\r\n\r\n区块引用可以嵌套（例如：引用内的引用），只要根据层次加上不同数量的 `>` ：\r\n\r\n    > This is the first level of quoting.\r\n    >\r\n    > > This is nested blockquote.\r\n    >\r\n    > Back to the first level.\r\n\r\n引用的区块内也可以使用其他的 Markdown 语法，包括标题、列表、代码区块等：\r\n\r\n	> ## 这是一个标题。\r\n	> \r\n	> 1.   这是第一行列表项。\r\n	> 2.   这是第二行列表项。\r\n	> \r\n	> 给出一些例子代码：\r\n	> \r\n	>     return shell_exec(\"echo $input | $markdown_script\");\r\n\r\n任何像样的文本编辑器都能轻松地建立 email 型的引用。例如在 BBEdit 中，你可以选取文字后然后从选单中选择*增加引用阶层*。\r\n\r\n<h3 id=\"list\">列表</h3>\r\n\r\nMarkdown 支持有序列表和无序列表。\r\n\r\n无序列表使用星号、加号或是减号作为列表标记：\r\n\r\n    *   Red\r\n    *   Green\r\n    *   Blue\r\n\r\n等同于：\r\n\r\n    +   Red\r\n    +   Green\r\n    +   Blue\r\n\r\n也等同于：\r\n\r\n    -   Red\r\n    -   Green\r\n    -   Blue\r\n\r\n有序列表则使用数字接着一个英文句点：\r\n\r\n    1.  Bird\r\n    2.  McHale\r\n    3.  Parish\r\n\r\n很重要的一点是，你在列表标记上使用的数字并不会影响输出的 HTML 结果，上面的列表所产生的 HTML 标记为：\r\n\r\n    <ol>\r\n    <li>Bird</li>\r\n    <li>McHale</li>\r\n    <li>Parish</li>\r\n    </ol>\r\n\r\n如果你的列表标记写成：\r\n\r\n    1.  Bird\r\n    1.  McHale\r\n    1.  Parish\r\n\r\n或甚至是：\r\n\r\n    3. Bird\r\n    1. McHale\r\n    8. Parish\r\n\r\n你都会得到完全相同的 HTML 输出。重点在于，你可以让 Markdown 文件的列表数字和输出的结果相同，或是你懒一点，你可以完全不用在意数字的正确性。\r\n\r\n如果你使用懒惰的写法，建议第一个项目最好还是从 1. 开始，因为 Markdown 未来可能会支持有序列表的 start 属性。\r\n\r\n列表项目标记通常是放在最左边，但是其实也可以缩进，最多 3 个空格，项目标记后面则一定要接着至少一个空格或制表符。\r\n\r\n要让列表看起来更漂亮，你可以把内容用固定的缩进整理好：\r\n\r\n    *   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n        Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,\r\n        viverra nec, fringilla in, laoreet vitae, risus.\r\n    *   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.\r\n        Suspendisse id sem consectetuer libero luctus adipiscing.\r\n\r\n但是如果你懒，那也行：\r\n\r\n    *   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n    Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,\r\n    viverra nec, fringilla in, laoreet vitae, risus.\r\n    *   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.\r\n    Suspendisse id sem consectetuer libero luctus adipiscing.\r\n\r\n如果列表项目间用空行分开，在输出 HTML 时 Markdown 就会将项目内容用 `<p>` \r\n标签包起来，举例来说：\r\n\r\n    *   Bird\r\n    *   Magic\r\n\r\n会被转换为：\r\n\r\n    <ul>\r\n    <li>Bird</li>\r\n    <li>Magic</li>\r\n    </ul>\r\n\r\n但是这个：\r\n\r\n    *   Bird\r\n\r\n    *   Magic\r\n\r\n会被转换为：\r\n\r\n    <ul>\r\n    <li><p>Bird</p></li>\r\n    <li><p>Magic</p></li>\r\n    </ul>\r\n\r\n列表项目可以包含多个段落，每个项目下的段落都必须缩进 4 个空格或是 1 个制表符：\r\n\r\n    1.  This is a list item with two paragraphs. Lorem ipsum dolor\r\n        sit amet, consectetuer adipiscing elit. Aliquam hendrerit\r\n        mi posuere lectus.\r\n\r\n        Vestibulum enim wisi, viverra nec, fringilla in, laoreet\r\n        vitae, risus. Donec sit amet nisl. Aliquam semper ipsum\r\n        sit amet velit.\r\n\r\n    2.  Suspendisse id sem consectetuer libero luctus adipiscing.\r\n\r\n如果你每行都有缩进，看起来会看好很多，当然，再次地，如果你很懒惰，Markdown 也允许：\r\n\r\n    *   This is a list item with two paragraphs.\r\n\r\n        This is the second paragraph in the list item. You\'re\r\n    only required to indent the first line. Lorem ipsum dolor\r\n    sit amet, consectetuer adipiscing elit.\r\n\r\n    *   Another item in the same list.\r\n\r\n如果要在列表项目内放进引用，那 `>` 就需要缩进：\r\n\r\n    *   A list item with a blockquote:\r\n\r\n        > This is a blockquote\r\n        > inside a list item.\r\n\r\n如果要放代码区块的话，该区块就需要缩进*两次*，也就是 8 个空格或是 2 个制表符：\r\n\r\n    *   一列表项包含一个列表区块：\r\n\r\n            <代码写在这>\r\n\r\n\r\n当然，项目列表很可能会不小心产生，像是下面这样的写法：\r\n\r\n    1986. What a great season.\r\n\r\n换句话说，也就是在行首出现*数字-句点-空白*，要避免这样的状况，你可以在句点前面加上反斜杠。\r\n\r\n    1986\\. What a great season.\r\n\r\n<h3 id=\"precode\">代码区块</h3>\r\n\r\n和程序相关的写作或是标签语言原始码通常会有已经排版好的代码区块，通常这些区块我们并不希望它以一般段落文件的方式去排版，而是照原来的样子显示，Markdown 会用 `<pre>` 和 `<code>` 标签来把代码区块包起来。\r\n\r\n要在 Markdown 中建立代码区块很简单，只要简单地缩进 4 个空格或是 1 个制表符就可以，例如，下面的输入：\r\n\r\n    这是一个普通段落：\r\n\r\n        这是一个代码区块。\r\n\r\nMarkdown 会转换成：\r\n\r\n    <p>这是一个普通段落：</p>\r\n\r\n    <pre><code>这是一个代码区块。\r\n    </code></pre>\r\n\r\n这个每行一阶的缩进（4 个空格或是 1 个制表符），都会被移除，例如：\r\n\r\n    Here is an example of AppleScript:\r\n\r\n        tell application \"Foo\"\r\n            beep\r\n        end tell\r\n\r\n会被转换为：\r\n\r\n    <p>Here is an example of AppleScript:</p>\r\n\r\n    <pre><code>tell application \"Foo\"\r\n        beep\r\n    end tell\r\n    </code></pre>\r\n\r\n一个代码区块会一直持续到没有缩进的那一行（或是文件结尾）。\r\n\r\n在代码区块里面， `&` 、 `<` 和 `>` 会自动转成 HTML 实体，这样的方式让你非常容易使用 Markdown 插入范例用的 HTML 原始码，只需要复制贴上，再加上缩进就可以了，剩下的 Markdown 都会帮你处理，例如：\r\n\r\n        <div class=\"footer\">\r\n            &copy; 2004 Foo Corporation\r\n        </div>\r\n\r\n会被转换为：\r\n\r\n    <pre><code>&lt;div class=\"footer\"&gt;\r\n        &amp;copy; 2004 Foo Corporation\r\n    &lt;/div&gt;\r\n    </code></pre>\r\n\r\n代码区块中，一般的 Markdown 语法不会被转换，像是星号便只是星号，这表示你可以很容易地以 Markdown 语法撰写 Markdown 语法相关的文件。\r\n\r\n<h3 id=\"hr\">分隔线</h3>\r\n\r\n你可以在一行中用三个以上的星号、减号、底线来建立一个分隔线，行内不能有其他东西。你也可以在星号或是减号中间插入空格。下面每种写法都可以建立分隔线：\r\n\r\n    * * *\r\n\r\n    ***\r\n\r\n    *****\r\n\r\n    - - -\r\n\r\n    ---------------------------------------\r\n\r\n\r\n* * *\r\n\r\n<h2 id=\"span\">区段元素</h2>\r\n\r\n<h3 id=\"link\">链接</h3>\r\n\r\nMarkdown 支持两种形式的链接语法： *行内式*和*参考式*两种形式。\r\n\r\n不管是哪一种，链接文字都是用 [方括号] 来标记。\r\n\r\n要建立一个*行内式*的链接，只要在方块括号后面紧接着圆括号并插入网址链接即可，如果你还想要加上链接的 title 文字，只要在网址后面，用双引号把 title 文字包起来即可，例如：\r\n\r\n    This is [an example](http://example.com/ \"Title\") inline link.\r\n\r\n    [This link](http://example.net/) has no title attribute.\r\n\r\n会产生：\r\n\r\n    <p>This is <a href=\"http://example.com/\" title=\"Title\">\r\n    an example</a> inline link.</p>\r\n\r\n    <p><a href=\"http://example.net/\">This link</a> has no\r\n    title attribute.</p>\r\n\r\n如果你是要链接到同样主机的资源，你可以使用相对路径：\r\n\r\n    See my [About](/about/) page for details.   \r\n\r\n*参考式*的链接是在链接文字的括号后面再接上另一个方括号，而在第二个方括号里面要填入用以辨识链接的标记：\r\n\r\n    This is [an example][id] reference-style link.\r\n\r\n你也可以选择性地在两个方括号中间加上一个空格：\r\n\r\n    This is [an example] [id] reference-style link.\r\n\r\n接着，在文件的任意处，你可以把这个标记的链接内容定义出来：\r\n\r\n    [id]: http://example.com/  \"Optional Title Here\"\r\n\r\n链接内容定义的形式为：\r\n\r\n*   方括号（前面可以选择性地加上至多三个空格来缩进），里面输入链接文字\r\n*   接着一个冒号\r\n*   接着一个以上的空格或制表符\r\n*   接着链接的网址\r\n*   选择性地接着 title 内容，可以用单引号、双引号或是括弧包着\r\n\r\n下面这三种链接的定义都是相同：\r\n\r\n	[foo]: http://example.com/  \"Optional Title Here\"\r\n	[foo]: http://example.com/  \'Optional Title Here\'\r\n	[foo]: http://example.com/  (Optional Title Here)\r\n\r\n**请注意：**有一个已知的问题是 Markdown.pl 1.0.1 会忽略单引号包起来的链接 title。\r\n\r\n链接网址也可以用方括号包起来：\r\n\r\n    [id]: <http://example.com/>  \"Optional Title Here\"\r\n\r\n你也可以把 title 属性放到下一行，也可以加一些缩进，若网址太长的话，这样会比较好看：\r\n\r\n    [id]: http://example.com/longish/path/to/resource/here\r\n        \"Optional Title Here\"\r\n\r\n网址定义只有在产生链接的时候用到，并不会直接出现在文件之中。\r\n\r\n链接辨别标签可以有字母、数字、空白和标点符号，但是并*不*区分大小写，因此下面两个链接是一样的：\r\n\r\n	[link text][a]\r\n	[link text][A]\r\n\r\n*隐式链接标记*功能让你可以省略指定链接标记，这种情形下，链接标记会视为等同于链接文字，要用隐式链接标记只要在链接文字后面加上一个空的方括号，如果你要让 \"Google\" 链接到 google.com，你可以简化成：\r\n\r\n	[Google][]\r\n\r\n然后定义链接内容：\r\n\r\n	[Google]: http://google.com/\r\n\r\n由于链接文字可能包含空白，所以这种简化型的标记内也许包含多个单词：\r\n\r\n	Visit [Daring Fireball][] for more information.\r\n\r\n然后接着定义链接：\r\n\r\n	[Daring Fireball]: http://daringfireball.net/\r\n\r\n链接的定义可以放在文件中的任何一个地方，我比较偏好直接放在链接出现段落的后面，你也可以把它放在文件最后面，就像是注解一样。\r\n\r\n下面是一个参考式链接的范例：\r\n\r\n    I get 10 times more traffic from [Google] [1] than from\r\n    [Yahoo] [2] or [MSN] [3].\r\n\r\n      [1]: http://google.com/        \"Google\"\r\n      [2]: http://search.yahoo.com/  \"Yahoo Search\"\r\n      [3]: http://search.msn.com/    \"MSN Search\"\r\n\r\n如果改成用链接名称的方式写：\r\n\r\n    I get 10 times more traffic from [Google][] than from\r\n    [Yahoo][] or [MSN][].\r\n\r\n      [google]: http://google.com/        \"Google\"\r\n      [yahoo]:  http://search.yahoo.com/  \"Yahoo Search\"\r\n      [msn]:    http://search.msn.com/    \"MSN Search\"\r\n\r\n上面两种写法都会产生下面的 HTML。\r\n\r\n    <p>I get 10 times more traffic from <a href=\"http://google.com/\"\r\n    title=\"Google\">Google</a> than from\r\n    <a href=\"http://search.yahoo.com/\" title=\"Yahoo Search\">Yahoo</a>\r\n    or <a href=\"http://search.msn.com/\" title=\"MSN Search\">MSN</a>.</p>\r\n\r\n下面是用行内式写的同样一段内容的 Markdown 文件，提供作为比较之用：\r\n\r\n    I get 10 times more traffic from [Google](http://google.com/ \"Google\")\r\n    than from [Yahoo](http://search.yahoo.com/ \"Yahoo Search\") or\r\n    [MSN](http://search.msn.com/ \"MSN Search\").\r\n\r\n参考式的链接其实重点不在于它比较好写，而是它比较好读，比较一下上面的范例，使用参考式的文章本身只有 81 个字符，但是用行内形式的却会增加到 176 个字元，如果是用纯 HTML 格式来写，会有 234 个字元，在 HTML 格式中，标签比文本还要多。\r\n\r\n使用 Markdown 的参考式链接，可以让文件更像是浏览器最后产生的结果，让你可以把一些标记相关的元数据移到段落文字之外，你就可以增加链接而不让文章的阅读感觉被打断。\r\n\r\n<h3 id=\"em\">强调</h3>\r\n\r\nMarkdown 使用星号（`*`）和底线（`_`）作为标记强调字词的符号，被 `*` 或 `_` 包围的字词会被转成用 `<em>` 标签包围，用两个 `*` 或 `_` 包起来的话，则会被转成 `<strong>`，例如：\r\n\r\n    *single asterisks*\r\n\r\n    _single underscores_\r\n\r\n    **double asterisks**\r\n\r\n    __double underscores__\r\n\r\n会转成：\r\n\r\n    <em>single asterisks</em>\r\n\r\n    <em>single underscores</em>\r\n\r\n    <strong>double asterisks</strong>\r\n\r\n    <strong>double underscores</strong>\r\n\r\n你可以随便用你喜欢的样式，唯一的限制是，你用什么符号开启标签，就要用什么符号结束。\r\n\r\n强调也可以直接插在文字中间：\r\n\r\n    un*frigging*believable\r\n\r\n但是**如果你的 `*` 和 `_` 两边都有空白的话，它们就只会被当成普通的符号**。\r\n\r\n如果要在文字前后直接插入普通的星号或底线，你可以用反斜线：\r\n\r\n    \\*this text is surrounded by literal asterisks\\*\r\n\r\n<h3 id=\"code\">代码</h3>\r\n\r\n如果要标记一小段行内代码，你可以用反引号把它包起来（`` ` ``），例如：\r\n\r\n    Use the `printf()` function.\r\n\r\n会产生：\r\n\r\n    <p>Use the <code>printf()</code> function.</p>\r\n\r\n如果要在代码区段内插入反引号，你可以用多个反引号来开启和结束代码区段：\r\n\r\n    ``There is a literal backtick (`) here.``\r\n\r\n这段语法会产生：\r\n\r\n    <p><code>There is a literal backtick (`) here.</code></p>\r\n\r\n代码区段的起始和结束端都可以放入一个空白，起始端后面一个，结束端前面一个，这样你就可以在区段的一开始就插入反引号：\r\n\r\n	A single backtick in a code span: `` ` ``\r\n	\r\n	A backtick-delimited string in a code span: `` `foo` ``\r\n\r\n会产生：\r\n\r\n	<p>A single backtick in a code span: <code>`</code></p>\r\n	\r\n	<p>A backtick-delimited string in a code span: <code>`foo`</code></p>\r\n\r\n在代码区段内，`&` 和方括号**都**会被自动地转成 HTML 实体，这使得插入 HTML 原始码变得很容易，Markdown 会把下面这段：\r\n\r\n    Please don\'t use any `<blink>` tags.\r\n\r\n转为：\r\n\r\n    <p>Please don\'t use any <code>&lt;blink&gt;</code> tags.</p>\r\n\r\n你也可以这样写：\r\n\r\n    `&#8212;` is the decimal-encoded equivalent of `&mdash;`.\r\n\r\n以产生：\r\n\r\n    <p><code>&amp;#8212;</code> is the decimal-encoded\r\n    equivalent of <code>&amp;mdash;</code>.</p>\r\n\r\n\r\n\r\n<h3 id=\"img\">图片</h3>\r\n\r\n很明显地，要在纯文字应用中设计一个「自然」的语法来插入图片是有一定难度的。\r\n\r\nMarkdown 使用一种和链接很相似的语法来标记图片，同样也允许两种样式： *行内式*和*参考式*。\r\n\r\n行内式的图片语法看起来像是：\r\n\r\n    ![Alt text](/path/to/img.jpg)\r\n\r\n    ![Alt text](/path/to/img.jpg \"Optional title\")\r\n\r\n详细叙述如下：\r\n\r\n*   一个惊叹号 `!`\r\n*   接着一个方括号，里面放上图片的替代文字\r\n*   接着一个普通括号，里面放上图片的网址，最后还可以用引号包住并加上\r\n    选择性的 \'title\' 文字。\r\n\r\n参考式的图片语法则长得像这样：\r\n\r\n    ![Alt text][id]\r\n\r\n「id」是图片参考的名称，图片参考的定义方式则和连结参考一样：\r\n\r\n    [id]: url/to/image  \"Optional title attribute\"\r\n\r\n到目前为止， Markdown 还没有办法指定图片的宽高，如果你需要的话，你可以使用普通的 `<img>` 标签。\r\n\r\n* * *\r\n\r\n<h2 id=\"misc\">其它</h2>\r\n\r\n<h3 id=\"autolink\">自动链接</h3>\r\n\r\nMarkdown 支持以比较简短的自动链接形式来处理网址和电子邮件信箱，只要是用方括号包起来， Markdown 就会自动把它转成链接。一般网址的链接文字就和链接地址一样，例如：\r\n\r\n    <http://example.com/>\r\n\r\nMarkdown 会转为：\r\n\r\n    <a href=\"http://example.com/\">http://example.com/</a>\r\n\r\n邮址的自动链接也很类似，只是 Markdown 会先做一个编码转换的过程，把文字字符转成 16 进位码的 HTML 实体，这样的格式可以糊弄一些不好的邮址收集机器人，例如：\r\n\r\n    <address@example.com>\r\n\r\nMarkdown 会转成：\r\n\r\n    <a href=\"&#x6D;&#x61;i&#x6C;&#x74;&#x6F;:&#x61;&#x64;&#x64;&#x72;&#x65;\r\n    &#115;&#115;&#64;&#101;&#120;&#x61;&#109;&#x70;&#x6C;e&#x2E;&#99;&#111;\r\n    &#109;\">&#x61;&#x64;&#x64;&#x72;&#x65;&#115;&#115;&#64;&#101;&#120;&#x61;\r\n    &#109;&#x70;&#x6C;e&#x2E;&#99;&#111;&#109;</a>\r\n\r\n在浏览器里面，这段字串（其实是 `<a href=\"mailto:address@example.com\">address@example.com</a>`）会变成一个可以点击的「address@example.com」链接。\r\n\r\n（这种作法虽然可以糊弄不少的机器人，但并不能全部挡下来，不过总比什么都不做好些。不管怎样，公开你的信箱终究会引来广告信件的。）\r\n\r\n<h3 id=\"backslash\">反斜杠</h3>\r\n\r\nMarkdown 可以利用反斜杠来插入一些在语法中有其它意义的符号，例如：如果你想要用星号加在文字旁边的方式来做出强调效果（但不用 `<em>` 标签），你可以在星号的前面加上反斜杠：\r\n\r\n    \\*literal asterisks\\*\r\n\r\nMarkdown 支持以下这些符号前面加上反斜杠来帮助插入普通的符号：\r\n\r\n    \\   反斜线\r\n    `   反引号\r\n    *   星号\r\n    _   底线\r\n    {}  花括号\r\n    []  方括号\r\n    ()  括弧\r\n    #   井字号\r\n    +   加号\r\n    -   减号\r\n    .   英文句点\r\n    !   惊叹号\r\n\r\n<h2 id=\"acknowledgement\">感谢</h2>\r\n\r\n感谢 [leafy7382][] 协助翻译，[hlb][]、[Randylien][] 帮忙润稿，[ethantw][] 的[汉字标准格式・CSS Reset][]， [WM][] 回报文字错误。\r\n\r\n[leafy7382]:https://twitter.com/#!/leafy7382\r\n[hlb]:http://iamhlb.com/\r\n[Randylien]:http://twitter.com/randylien\r\n[ethantw]:https://twitter.com/#!/ethantw\r\n[汉字标准格式・CSS Reset]:http://ethantw.net/projects/han/\r\n[WM]:http://kidwm.net/\r\n\r\n感谢 [fenprace][]，[addv][]。\r\n\r\n[fenprace]:https://github.com/fenprace\r\n[addv]:https://github.com/addv\r\n\r\n----------\r\n<h2 id=\"editor\">Markdown 免费编辑器</h2>\r\n\r\nWindows 平台\r\n\r\n* [MarkdownPad](http://markdownpad.com/)\r\n* [MarkPad](http://code52.org/DownmarkerWPF/)\r\n\r\nLinux 平台\r\n\r\n* [ReText](http://sourceforge.net/p/retext/home/ReText/)\r\n\r\nMac 平台\r\n\r\n* [Mou](http://mouapp.com/)\r\n\r\n在线编辑器\r\n\r\n* [Markable.in](http://markable.in/)\r\n* [Dillinger.io](http://dillinger.io/)\r\n\r\n浏览器插件\r\n\r\n* [MaDe](https://chrome.google.com/webstore/detail/oknndfeeopgpibecfjljjfanledpbkog) (Chrome)\r\n\r\n高级应用\r\n\r\n* [Sublime Text 2](http://www.sublimetext.com/2) + [MarkdownEditing](http://ttscoff.github.com/MarkdownEditing/) / [教程](http://lucifr.com/2012/07/12/markdownediting-for-sublime-text-2/)',0,2,4,1,'2016-10-16 14:50:22','2016-10-16 22:51:30'),(7,'使用 GDB 调试程序','GDB是UNIX下面的程序调试工具, 可以调试多种类型程序, 主要可以完成以下四个功能:\r\n\r\n1. 启动你的程序，可以按照你的自定义的要求随心所欲的运行程序。 \r\n2. 可让被调试的程序在指定的调置的断点处停住。（断点可以是条件表达式）\r\n3. 当程序被停住时，可以检查此时程序中所发生的事。\r\n4. 动态的改变程序的执行环境。\r\n\r\n# 简单的调试例子\r\n\r\n测试程序如下：\r\n\r\n    #include <stdio.h>\r\n    int func(int n)\r\n    {\r\n        int sum=0,i;\r\n        for(i=0; i<n; i++)\r\n        {\r\n            sum+=i;\r\n        }\r\n        return sum;\r\n    }\r\n    void main()\r\n    {\r\n        int i; long result = 0;\r\n        for(i=1; i<=100; i++)\r\n        {\r\n            result += i;\r\n        }\r\n        printf(“result[1-100] = %d \\n”, result );\r\n        printf(“result[1-250] = %d \\n”, func(250) );\r\n    }\r\n\r\n编译生成执行文件（要调试C/C++的程序，在编译时必须要把调试信息加到可执行文件中：-g 选项）：\r\n\r\n    gcc -g C++_GDB_test.cpp -o C++_GDB_test.o\r\n\r\n一个简单的调试过程如下：\r\n\r\n    $ gdb C++_GDB_test.o\r\n    GNU gdb (GDB) 7.10.1\r\n    ......\r\n    done.\r\n    (gdb) l                    ----> l(list), 列出源码\r\n    6	*/\r\n    7\r\n    8	#include <stdio.h>\r\n    9	int func(int n)\r\n    10	{\r\n    11	    int sum=0,i;\r\n    12	    for(i=0; i<n; i++)\r\n    13	    {\r\n    14	        sum+=i;\r\n    15	    }\r\n    (gdb)                      ----> 直接回车表示重复上一次命令\r\n    16	    return sum;\r\n    17	}\r\n    18	int main()\r\n    19	{\r\n    20	    int i; long result = 0;\r\n    21	    for(i=1; i<=100; i++)\r\n    22	    {\r\n    23	        result += i;\r\n    24	    }\r\n    25	    printf(\"result[1-100] = %ld\\n\", result );\r\n    (gdb)\r\n    26	    printf(\"result[1-250] = %d\\n\", func(250));\r\n    27	}\r\n    (gdb) br 20                 ----> 设置断点，在源程序 20 行处\r\n    Breakpoint 1 at 0x100000edf: file C++_GDB_test.cpp, line 20.\r\n    (gdb) br func               ----> 设置断点，在函数func()入口处\r\n    Breakpoint 2 at 0x100000e97: file C++_GDB_test.cpp, line 11.\r\n    (gdb) info br               ----> 查看断点信息\r\n    Num     Type           Disp Enb Address            What\r\n    1       breakpoint     keep y   0x0000000100000edf in main() at C++_GDB_test.cpp:20\r\n    2       breakpoint     keep y   0x0000000100000e97 in func(int) at C++_GDB_test.cpp:11\r\n    (gdb) r                     ----> r(run) 运行程序\r\n    Starting program: .../C++_Code/C++_GDB_test.o\r\n    Breakpoint 1, main () at C++_GDB_test.cpp:20  ----> 在断点处停住\r\n    20	    int i; long result = 0;\r\n    (gdb) n                     ----> n(next)单条语句执行\r\n    21	    for(i=1; i<=100; i++)\r\n    (gdb) n\r\n    23	        result += i;\r\n    (gdb) n\r\n    21	    for(i=1; i<=100; i++)\r\n    (gdb) c                     ----> c(continue)继续运行程序到下一个断点\r\n    Continuing.\r\n    result[1-100] = 5050        ----> 程序输出\r\n    \r\n    Breakpoint 2, func (n=250) at C++_GDB_test.cpp:11\r\n    11	    int sum=0,i;\r\n    (gdb) n\r\n    12	    for(i=0; i<n; i++)\r\n    (gdb) br 14 if i==50        ----> 设置条件断点\r\n    Breakpoint 3 at 0x100000eb1: file C++_GDB_test.cpp, line 14.\r\n    (gdb) c\r\n    Continuing.\r\n    \r\n    Breakpoint 3, func (n=250) at C++_GDB_test.cpp:14\r\n    14	        sum+=i;\r\n    (gdb) p i                   ----> p(print): 打印变量i的值\r\n    $1 = 50\r\n    (gdb) p sum                 ----> p: 打印变量sum的值\r\n    $2 = 1225\r\n    (gdb) bt                    ----> 查看函数堆栈\r\n    #0  func (n=250) at C++_GDB_test.cpp:14\r\n    #1  0x0000000100000f36 in main () at C++_GDB_test.cpp:26\r\n    (gdb) finish                ----> 退出函数\r\n    Run till exit from #0  func (n=250) at C++_GDB_test.cpp:14\r\n    0x0000000100000f36 in main () at C++_GDB_test.cpp:26\r\n    26	    printf(\"result[1-250] = %d\\n\", func(250));\r\n    Value returned is $6 = 31125\r\n    (gdb) c\r\n    Continuing.\r\n    result[1-250] = 31125\r\n    [Inferior 1 (process 8845) exited normally]   ----> 程序退出，调试结束 \r\n    (gdb) q \r\n\r\n# core dump 调试\r\n\r\n当程序异常退出时，操作系统把程序当前的内存状况存储在一个core文件中，该文件包含了程序运行时的内存，寄存器状态，堆栈指针，内存管理信息还有各种函数调用堆栈信息等。通过分析这个文件，我们可以定位到程序异常退出的时候对应的堆栈调用等信息，找出问题所在并进行及时解决。\r\n\r\n首先要确定当前会话的 ulimit –c，若为0，则不会产生对应的coredump，需要进行修改和设置，`ulimit –c [size]`（注意，这里的size如果太小，则可能不会产生对应的core文件）。\r\n\r\n```\r\nulimit  -c unlimited  (可以产生core dump 且不受大小限制)\r\n```\r\n\r\ncore文件默认的存储位置为当前进程的工作目录（一般就是可执行文件所在的目录）。当程序出现段错误（试图访问或者修改不属于自己的内存地址时）时，就会产生 core dump，方便我们进行调试。下面是一些常见的段错误：\r\n\r\n* 内存访问越界：由于使用错误的下标，导致数组访问越界。\r\n* 非法指针访问：比如写 nullptr\r\n* 栈溢出：使用了大的局部变量\r\n\r\n下面是个简单的例子：\r\n\r\n```c++\r\n#include <iostream>\r\nusing namespace std;\r\n\r\nvoid test(){\r\n    int *p = nullptr;\r\n    *p = 1;             // Segment Fault\r\n}\r\nint main() {\r\n    test();\r\n    return 0;\r\n}\r\n```\r\n\r\n然后编译运行程序，用 GDB 查看其产生的 Core Dump 文件：\r\n\r\n```bash\r\n$ g++ -g demo.cpp -o demo.o -std=c++11\r\n$ ulimit -c\r\n0\r\n$ ulimit -c unlimited\r\n$ ./demo.o\r\n[1]    15193 segmentation fault (core dumped)  ./demo.o\r\n$ ~ ls\r\ncore  demo.cpp  demo.o\r\n➜  ~ gdb demo.o core\r\nGNU gdb (Ubuntu 7.7.1-0ubuntu5~14.04.2) 7.7.1\r\nCopyright (C) 2014 Free Software Foundation, Inc.\r\n......\r\nCore was generated by \'./demo.o\'.\r\nProgram terminated with signal SIGSEGV, Segmentation fault.\r\n#0  0x00000000004006dd in test () at demo.cpp:6\r\n6	    *p = 1;\r\n(gdb) bt\r\n#0  0x00000000004006dd in test () at demo.cpp:6\r\n#1  0x00000000004006ee in main () at demo.cpp:9\r\n```\r\n\r\n# 调试参数\r\n\r\ngdb调试中需要用到的命令\r\n\r\n* file [filename]：装入想要调试的可执行文件\r\n* kill [filename]：终止正在调试的程序\r\n* break [file:]function：在(file文件的)function函数中设置一个断点\r\n* clear：删除一个断点，这个命令需要指定代码行或者函数名作为参数\r\n* run [arglist]：运行您的程序 (如果指定了arglist,则将arglist作为参数运行程序)\r\n* bt Backtrace：显示程序堆栈信息\r\n* `x`：查看内存\r\n* print expr：打印表达式的值\r\n* continue：继续运行您的程序 (在停止之后，比如在一个断点之后)\r\n* list：列出产生执行文件的源代码的一部分\r\n* next：单步执行 (在停止之后); 跳过函数调用（与step相对应，step会进入函数内部）\r\n* set：设置变量的值。例如：set nval=54 将把54保存到nval变量中；设置输入参数也可以通过这个命令(例如当三个入参分别为a、b、c的话，set args a b c)\r\n* watch：使你能监视一个变量的值而不管它何时被改变\r\n* finish：继续执行，直到当前函数返回\r\n* ignore：忽略某个断点制定的次数。例：ignore 4 23 忽略断点4的23次运行，在第24次的时候中断\r\n* info [name]：查看name信息\r\n* xbreak：在当前函数的退出的点上设置一个断点\r\n* whatis：显示变量的值和类型\r\n* ptype：显示变量的类型\r\n* shell：使你能不离开 gdb 就执行 UNIX shell 命令\r\n* help [name]：显示GDB命令的信息，或者显示如何使用GDB的总体信息\r\n* quit：退出gdb.\r\n  \r\n`命令行参数`\r\n\r\n有时候，我们需要调试的程序需要有命令行参数，可以通过下面两种方式设置调试的程序的命令行参数：\r\n\r\n* gdb命令行的 –args 参数\r\n* gdb环境中 set args命令。\r\n\r\n# 高级的用法\r\n\r\n比如为了搞清楚柔性数组的内存分布特征，我们可以用下面的程序来验证：\r\n\r\n    #include <stdlib.h>\r\n    #include <string.h>\r\n    \r\n    struct line {\r\n       int length;\r\n       char contents[0]; // C99：char contents[]; 没有指定数组长度\r\n    };\r\n    \r\n    int main(){\r\n        int this_length=10;\r\n        struct line *thisline = (struct line *)\r\n                         malloc (sizeof (struct line) + this_length);\r\n        thisline->length = this_length;\r\n        memset(thisline->contents, \'a\', this_length);\r\n        return 0;\r\n    }\r\n\r\n然后用下面的调试过程来理解柔性数组的内存分布：\r\n\r\n![][1]\r\n\r\n# 参考\r\n\r\n[使用gdb调试程序详解](http://www.vimer.cn/2009/11/使用gdb调试程序详解.html)  \r\n[GDB中应该知道的几个调试方法](http://coolshell.cn/articles/3643.html)  \r\n[Codesign gdb on Mac OS X Yosemite](http://andresabino.com/2015/04/14/codesign-gdb-on-mac-os-x-yosemite-10-10-2/)  \r\n[详解 coredump](http://blog.csdn.net/tenfyguo/article/details/8159176)  \r\n[C++编译器无法捕捉到的8种错误](http://blog.jobbole.com/15837/)  \r\n[What is a segmentation fault?](http://stackoverflow.com/questions/2346806/what-is-a-segmentation-fault)  \r\n\r\n[1]: http://7xrlu9.com1.z0.glb.clouddn.com/C++_GDB_Debug_1.png\r\n\r\n\r\n',0,0,1,1,'2016-10-16 15:12:15','2016-10-16 23:12:15');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password_hash` varchar(128) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `is_password_reset_link_valid` tinyint(1) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_joined` datetime DEFAULT NULL,
  `website` varchar(64) DEFAULT NULL,
  `avatar_url` varchar(64) DEFAULT NULL,
  `permissions` int(11) NOT NULL,
  `personal_id` varchar(32) DEFAULT NULL,
  `personal_profile` text,
  `telephone` varchar(32) DEFAULT NULL,
  `topicNum` int(11) NOT NULL,
  `postNum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_users_email` (`email`),
  UNIQUE KEY `ix_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'root','pbkdf2:sha1:1000$xBnOyGu0$2265b81c262f0438d80348748b24db1f66a65425','1291023320@qq.com',0,'2016-10-16 23:23:30','2016-09-29 03:14:30',NULL,'/static/upload/1.png?t=1475844478.0',1,NULL,NULL,NULL,3,0),(2,'test','pbkdf2:sha1:1000$JZE0rscV$a7b07ad8602a608e76dc583142b1aaf2c378c55b','1@qq.com',1,'2016-09-29 03:35:29','2016-09-29 03:35:29',NULL,'http://www.gravatar.com/avatar/',1,NULL,NULL,NULL,0,0),(3,'test2','pbkdf2:sha1:1000$9BWmBsyH$674d7552827b110e456b5ff7a9c2d1570dccb89f','2@qq.com',1,'2016-09-29 03:36:08','2016-09-29 03:36:08',NULL,'http://www.gravatar.com/avatar/',1,NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-16 23:24:38
