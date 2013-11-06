<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Capgemini UK</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta http-equiv="Content-Type"
 content="text/html; charset=iso-8859-1">
  <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="main-out">
<div class="main">
<div class="page">
<div class="top">
<div class="header">
<div class="header-top">
<h1><span>Capgemini</span></h1>

</div>

<div class="header-img">
<h2>Capgemini CSD Quiz</h2>
</div>
</div>
<div class="content">
<div class="content-left">
<div class="row1">



<div class="img"><img src="../images/img1.jpg" alt="" height="101"
 width="157"></div> 
<div class="welcome">
<h1 class="title">JAVA Quiz</h1>

</div>
</div>
<div class="row22">
<div class="section1">

<div id = "one" class = "unhidden">
<form name = "first"  >
1) What will be the output of the program? </br></br>

<input type = "radio" id = "a" value = "1" name = "quiz" >a) X = 0<br></br>
<input type = "radio" id = "b" value = "2" name = "quiz">b) X = 1<br></br>
<input type = "radio" id = "c" value = "3" name = "quiz">c) An exception is thrown at runtime.<br></br>


<img src="../images/question1.jpg" border="0" height="300" width="600"></a>
<br />
<br />
<input type = "button" value = "Next" onclick = "firstAnswer()"> 
<input type = "hidden" id = "txt1">
</form>

<!--
<ul class="enlarge"> 
<li>
<img src="../images/question1.jpg" width="150px" height="100px" alt="question1" /> 
<span> 
<img src="../images/question1.jpg" alt="question1" />
</span>
</li>
</ul>
-->

</div>

<div  class = "hidden" id = "two">
<form name = "second" >
2) What will be the output of the program?</br></br>
<input type = "radio" id = "a" value = "1" name = "quiz" >a) 72 7 34 foo34 7foo<br></br>
<input type = "radio" id = "b" value = "2" name = "quiz">b) 9 7 7 foo 7 7foo<br></br>
<input type = "radio" id = "c" value = "3" name = "quiz">c) 72 34 34 foo34 34foo<br></br>



<img src="/assets/images/Question2.jpg" border="0" height="300" width="600"></a>
<br />
<br />
<input type = "button" value = "Next" onclick = "secondAnswer()"> 
<input type = "hidden" id = "txt2">
</form>
</div>

<div class = "hidden" id = "three">
<form name = "third" >
3) What will be the output of the program?</br></br>
<input type = "radio" id = "a" value = "1" name = "quiz" >a) count = 0<br></br>
<input type = "radio" id = "b" value = "2" name = "quiz">b) count = 2<br></br>
<input type = "radio" id = "c" value = "3" name = "quiz">c) count = 3<br></br>


<img src="/assets/images/Question3.jpg" border="0" height="300" width="600"></a>
<br />
<br />
<input type = "button" value = "Next" onclick = "thirdAnswer()"> 
<input type = "hidden" id = "txt3">
</form>
</div>

<div class = "hidden" id = "four">
<form name = "four" >
4) Which two statements are equivalent?</br></br>
<input type = "radio" id = "a" value = "1" name = "quiz" >a) 1 and 2<br></br>
<input type = "radio" id = "b" value = "2" name = "quiz">b) 2 and 3<br></br>
<input type = "radio" id = "c" value = "3" name = "quiz">c) 3 and 4<br></br>


<img src="/assets/images/Question4.jpg" border="0" height="300" width="600"></a>
</br>
</br>
<input type = "button" value = "Next" onclick = "fourAnswer()"> 
<input type = "hidden" id = "txt4">
</form>
</div>

<div class = "hidden" id = "five">
<form name = "five" >
5) What is an applet?</br></br>
<input type = "radio" id = "a" value = "1" name = "quiz" >a) An apple.<br></br>
<input type = "radio" id = "a" value = "2" name = "quiz">b) Applets are simple computer programs that perform specific tasks and don't require hefty computer resources.<br></br>
<input type = "radio" id = "a" value = "3" name = "quiz">c) A JAVA specific programme.<br></br>
<input type = "button" value = "Next" onclick = "fiveAnswer()"> 
<input type = "hidden" id = "txt5">
</form>
</div>

<div class = "hidden" id = "six">
<form name = "six" >
6) What's the extension for a compiled Java file?</br></br>
<input type = "radio" id = "a" value = "1" name = "quiz" >a) .class<br></br>
<input type = "radio" id = "a" value = "2" name = "quiz">b) .java<br></br>
<input type = "radio" id = "a" value = "3" name = "quiz">c) .html<br></br>
<input type = "button" value = "Next" onclick = "sixAnswer()"> 
<input type = "hidden" id = "txt6">
</form>
</div>

<div class = "hidden" id = "seven">
<form name = "seven" >
7) What kind of programming language is Java?</br></br>
<input type = "radio" id = "a" value = "1" name = "quiz" >a) Array Programming Language.<br></br>
<input type = "radio" id = "a" value = "2" name = "quiz">b) Object-Oriented Programming Language.<br></br>
<input type = "radio" id = "a" value = "3" name = "quiz">c) Logical Programming Language<br></br>
<input type = "button" value = "Next" onclick = "sevenAnswer()"> 
<input type = "hidden" id = "txt7">
</form>
</div>

<div class = "hidden" id = "eight">
<form name = "eight" >
8) Please select the correct statement.</br></br>
<input type = "radio" id = "a" value = "1" name = "quiz" >a) If (a) is true and (b) is true then the output is "A && B"<br></br>
<input type = "radio" id = "b" value = "2" name = "quiz">b) If (a) is true and (b) is false then the output is "notB"<br></br>
<input type = "radio" id = "c" value = "3" name = "quiz">c) If (a) is false and (b) is true then the output is "ELSE"<br></br>

<img src="/assets/images/Question8.jpg" border="0" height="300" width="600"></a>

</br>
</br>
<input type = "button" value = "Next" onclick = "eightAnswer()"> 
<input type = "hidden" id = "txt8">
</form>
</div>

<div class = "hidden" id = "nine">
<form name = "nine" >
9) Which is true about a method-local inner class?</br></br>
<input type = "radio" id = "a" value = "1" name = "quiz" >a) It must be marked final.<br></br>
<input type = "radio" id = "b" value = "2" name = "quiz">b) It can be marked public.<br></br>
<input type = "radio" id = "c" value = "3" name = "quiz">c) It can be marked abstract.<br></br>
<input type = "button" value = "Next" onclick = "nineAnswer()"> 
<input type = "hidden" id = "txt9">
</form>
</div>

<div class = "hidden" id = "ten">
<form name = "ten" >
10) Which of the following line of code is suitable to start a thread ?</br></br>
<input type = "radio" id = "a" value = "1" name = "quiz" >a) X run = new X(); Thread t = new Thread(run); t.start();<br></br>
<input type = "radio" id = "b" value = "2" name = "quiz">b) Thread t = new Thread(); x.run();<br></br>
<input type = "radio" id = "c" value = "3" name = "quiz">c) Thread t = new Thread(X);<br></br>
</br>
<img src="/assets/images/Question10.jpg" border="0" height="300" width="600"></a>

<br />
<br />
<input type = "button" value = "Next Question" onclick = "tenAnswer()" id = "helo" class = "heloo"> 
<input type = "hidden" id = "txt10">
</form>
<input type = "hidden" id = "txt">
<input type = "button" value = "Score"  onclick = "total()">
</div>


<style type = "text/css">
.hidden
{
display:none;
}
.unhidden
{
display:block;
}
</style>
<script type = "text/javascript">

function firstAnswer()

  {

    for (i=0 ; i<document.first.quiz.length ; i++)
         {
              if (document.first.quiz[i].checked==true) 
           {
              var t = document.first.quiz[i].value
           }
 }

if (t == "3" )
 { 
  document.getElementById("txt1").value = "5"
  }
else  { 
   document.getElementById("txt1").value = "0"
}
 var item = document.getElementById("two");
 if (item) {
 item.className=(item.className=='hidden')?'unhidden':'hidden';
 }

 var item = document.getElementById("one");
 if (item) {
 item.className=(item.className=='unhidden')?'hidden':'unhidden';
 }
}




function secondAnswer()
  {

    for (i=0 ; i<document.second.quiz.length ; i++)
         {
              if (document.second.quiz[i].checked==true) 
           {
              var t = document.second.quiz[i].value
           }
 }

if (t == "1" )
 { 
  document.getElementById("txt2").value = "5"
  }
else  { 
   document.getElementById("txt2").value = "0"
}
 var item = document.getElementById("three");
 if (item) {
 item.className=(item.className=='hidden')?'unhidden':'hidden';
 }

 var item = document.getElementById("two");
 if (item) {
 item.className=(item.className=='unhidden')?'hidden':'unhidden';
 }
}


function thirdAnswer()
  {

    for (i=0 ; i<document.third.quiz.length ; i++)
         {
              if (document.third.quiz[i].checked==true) 
           {
              var t = document.third.quiz[i].value
           }
 }

if (t == "3" )
 { 
  document.getElementById("txt3").value = "5"
  }
else  { 
   document.getElementById("txt3").value = "0"
}
 var item = document.getElementById("four");
 if (item) {
 item.className=(item.className=='hidden')?'unhidden':'hidden';
 }

 var item = document.getElementById("three");
 if (item) {
 item.className=(item.className=='unhidden')?'hidden':'unhidden';
 }
}



function fourAnswer()
  {

    for (i=0 ; i<document.four.quiz.length ; i++)
         {
              if (document.four.quiz[i].checked==true) 
           {
              var t = document.four.quiz[i].value
           }
 }

if (t == "3" )
 { 
  document.getElementById("txt4").value = "5"
  }
else  { 
   document.getElementById("txt4").value = "0"
}
 var item = document.getElementById("five");
 if (item) {
 item.className=(item.className=='hidden')?'unhidden':'hidden';
 }

 var item = document.getElementById("four");
 if (item) {
 item.className=(item.className=='unhidden')?'hidden':'unhidden';
 }
}



function fiveAnswer()
  {

    for (i=0 ; i<document.five.quiz.length ; i++)
         {
              if (document.five.quiz[i].checked==true) 
           {
              var t = document.five.quiz[i].value
           }
 }

if (t == "2" )
 { 
  document.getElementById("txt5").value = "5"
  }
else  { 
   document.getElementById("txt5").value = "0"
}
 var item = document.getElementById("six");
 if (item) {
 item.className=(item.className=='hidden')?'unhidden':'hidden';
 }

 var item = document.getElementById("five");
 if (item) {
 item.className=(item.className=='unhidden')?'hidden':'unhidden';
 }
}


function sixAnswer()
  {

    for (i=0 ; i<document.six.quiz.length ; i++)
         {
              if (document.six.quiz[i].checked==true) 
           {
              var t = document.six.quiz[i].value
           }
       }

if (t == "1" )
 { 
  document.getElementById("txt6").value = "5"
  }
else  { 
   document.getElementById("txt6").value = "0"
}
 var item = document.getElementById("seven");
 if (item) {
 item.className=(item.className=='hidden')?'unhidden':'hidden';
 }

 var item = document.getElementById("six");
 if (item) {
 item.className=(item.className=='unhidden')?'hidden':'unhidden';
 }
}

function sevenAnswer()
  {

    for (i=0 ; i<document.seven.quiz.length ; i++)
         {
              if (document.seven.quiz[i].checked==true) 
           {
              var t = document.seven.quiz[i].value
           }
       }

if (t == "2" )
 { 
  document.getElementById("txt7").value = "5"
  }
else  { 
   document.getElementById("txt7").value = "0"
}
 var item = document.getElementById("eight");
 if (item) {
 item.className=(item.className=='hidden')?'unhidden':'hidden';
 }

 var item = document.getElementById("seven");
 if (item) {
 item.className=(item.className=='unhidden')?'hidden':'unhidden';
 }
}


function eightAnswer()
  {

    for (i=0 ; i<document.eight.quiz.length ; i++)
         {
              if (document.eight.quiz[i].checked==true) 
           {
              var t = document.eight.quiz[i].value
           }
       }

if (t == "3" )
 { 
  document.getElementById("txt8").value = "5"
  }
else  { 
   document.getElementById("txt8").value = "0"
}
 var item = document.getElementById("nine");
 if (item) {
 item.className=(item.className=='hidden')?'unhidden':'hidden';
 }

 var item = document.getElementById("eight");
 if (item) {
 item.className=(item.className=='unhidden')?'hidden':'unhidden';
 }
}


function nineAnswer()
  {

    for (i=0 ; i<document.nine.quiz.length ; i++)
         {
              if (document.nine.quiz[i].checked==true) 
           {
              var t = document.nine.quiz[i].value
           }
       }

if (t == "3" )
 { 
  document.getElementById("txt9").value = "5"
  }
else  { 
   document.getElementById("txt9").value = "0"
}
 var item = document.getElementById("ten");
 if (item) {
 item.className=(item.className=='hidden')?'unhidden':'hidden';
 }

 var item = document.getElementById("nine");
 if (item) {
 item.className=(item.className=='unhidden')?'hidden':'unhidden';
 }
}

function tenAnswer()
  {

    for (i=0 ; i<document.ten.quiz.length ; i++)
         {
              if (document.ten.quiz[i].checked==true) 
           {
              var t = document.ten.quiz[i].value
           }
       }

if (t == "1" )
 { 
  document.getElementById("txt10").value = "5"
  }
else  { 
   document.getElementById("txt10").value = "0"
}
var item = document.getElementById("helo");
item.className=(item.className=='hidden')?'unhidden':'hidden';
}

function total()
{
var a = parseInt(document.getElementById("txt1").value)
var b = parseInt(document.getElementById("txt2").value)
var c = parseInt(document.getElementById("txt3").value)
var d = parseInt(document.getElementById("txt4").value)
var e = parseInt(document.getElementById("txt5").value)
var f = parseInt(document.getElementById("txt6").value)
var g = parseInt(document.getElementById("txt7").value)
var h = parseInt(document.getElementById("txt8").value)
var i = parseInt(document.getElementById("txt9").value)
var j = parseInt(document.getElementById("txt10").value)
var k = a + b + c + d + e + f + g + h + i + j 
document.getElementById("txt").value = k
alert("your score is "+k+" out of 50");
}
</script>

<p>&nbsp;</p>
<p>&nbsp;</p>

</div>
<div class="section1">

</div>
</div>
</div>
<div class="content-right">
<h2>Quiz Types</h2>
<ul>
  <li style="border-top: medium none;"><a href="java.html">Java</a></li>
  <li><a href="#">C#</a></li>
  <li><a href="#">.NET 3</a></li>
  <li><a href="#">HTML 4</a></li>
  <li><a href="#">SQL 5</a></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</div>
</div>
<div class="bottom">
<ul>
  <li style="border-left: medium none;"><a href="index.jsp">Home</a></li>
  <li><a href="#">About&nbsp;CSD</a></li>
  <li><a href="#">Contact</a></li>
  <li><a href="#">Resources</a></li>
</ul>
<p>&copy; Copyright 2013. Designed by Kash Raju & James Caddick</p>

<img src="../images/footer.gif" alt="html templates" border="0" height="1" width="1"></a>

</div>
</div>
</div>
</div>
</body>
</html>
