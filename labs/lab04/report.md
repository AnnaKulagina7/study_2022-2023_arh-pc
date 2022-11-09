---
## Front matter
title: "Лабораторная работа №4"
subtitle: "Архитектура вычислительных систем"
author: "Кулагина Анна Сергеевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures

fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Задание

1. В соответствующем каталоге сделайте отчёт по лабораторной работе №4 
в формате Markdown. В качестве отчёта необходимо предоставить отчёты
в 3 форматах: pdf, docx и md.
2. Загрузите файлы на github.



# Выполнение лабораторной работы

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. [-@fig:001])

1)Создадим каталог для работы с программами на языке ассемблера NASM, перейдем в него,создадим текстовый файл с именем hello.asm,откройте этот файл с помощью gedit и введем текст.

![1.png](image/1.png){ #fig:001 width=95% }

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. [-@fig:002])
![2.png](image/2.png){ #fig:002 width=95% }

2) Для компиляции приведённого выше текста программы «Hello World» напишем nasm -f elf hello.asm. С помощью команды ls проверим, что объектный файл был создан.

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. [-@fig:003])

![3.png](image/3.png){ #fig:003 width=95% } 

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. [-@fig:004])

3) Выполним следующую команду nasm -o obj.o -f elf -g -l list.lst hello.asm и проверим
, что файлы были созданы.

![4.png](image/4.png){ #fig:004 width=95% } 

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. [-@fig:005])

4) Чтобы получить исполняемую программу,
объектный файл передадим на обработку компоновщику. С помощью команды ls проверим, что файл hello был создан. Выполним команду ld -m elf_i386 obj.o -o main.Запустим на выполнение созданный исполняемый файл с помощью ./hello.

![5.png](image/5.png){ #fig:005 width=95% } 

# Выполнение самостоятельной работы

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. [-@fig:006])

1) В каталоге ~/work/arch-pc/lab04 с помощью команды cp создадим копию
файла hello.asm с именем lab04.asm.
![6.png](image/6.png){ #fig:006 width=95% }

Описываются проведённые действия, в качестве иллюстрации даётся ссылка на иллюстрацию (рис. [-@fig:007])

2)Внесем изменения в текст программы в файле lab4.asm.

3)Оттранслируем полученный текст программы lab4.asm

4)Скопируем файлы hello.asm и lab4.asm в локальный репозиторий
в каталог ~/work/study/2022-2023/"Архитектура компьютера"/arch-
pc/labs/lab04/. Загрузим файлы на Github. 

![7.png](image/7.png){ #fig:007 width=95% }



# Выводы

Я освоила процедуру компиляции и сборки программ, написанных на ассемблере NASM.

# Список литературы{.unnumbered}

::: {#refs}
:::
