<!--Chris Martin and Maggie Shipley-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title></title>
    </head>
    <body>

             <div id="contentWrapper">
	    <h1 id="title">Badge Generator</h1>
            <form id="badgeForm" name="badgeForm" action="BadgeServlet" method="POST">

				<p><label for="name">Enter your name:</label>

				<input type="text" name="name" value="${Parameters.getName()}"/></p>

                <p><label for="textcolors">Select a text & shape color:</label>
                <select id="textcolors" name="textcolors">
                    <option value="red" style="font-weight:bold; color:red;">red</option>
                    <option value="orange" style="font-weight:bold; color:orange;">orange</option>
                    <option value="yellow" style=" font-weight:bold; color:yellow;">yellow</option>
                    <option value="green" style="font-weight:bold; color:green;">green</option>
                    <option value="cyan" style="font-weight:bold; color:cyan;">cyan</option>
                    <option value="blue" style="font-weight:bold; color:blue;">blue</option>
                    <option value="magenta" style="font-weight:bold; color:magenta;">magenta</option>
                    <option value="pink" style="font-weight:bold; color:pink;">pink</option>
                    <option value="white" style="font-weight:bold;">white</option>
                    <option value="lightGray" style="font-weight:bold; color:lightGray;">light gray</option>
                    <option value="gray" style="font-weight:bold; color:#A9A9A9;">gray</option>
                    <option value="darkGray" style="font-weight:bold; color:#696969;">dark gray</option>
                    <option value="black" style="font-weight:bold; color:black;">black</option>
                </select></p>


				<div id="badge">
						<aside style="float:right; width:50%;">
						<p>Badge:</p>
						</aside>
				</div>
				<p><label for="bgcolors">Select a background color:</label>

                <select id="bgcolors" name="bgcolors">

                    <option value="red" style="font-weight:bold; color:red;">red</option>
                    <option value="orange" style="font-weight:bold; color:orange;">orange</option>
                    <option value="yellow" style=" font-weight:bold; color:yellow;">yellow</option>
                    <option value="green" style="font-weight:bold; color:green;">green</option>
                    <option value="cyan" selected="selected" style="font-weight:bold; color:cyan;">cyan</option>
                    <option value="blue" style="font-weight:bold; color:blue;">blue</option>
                    <option value="magenta" style="font-weight:bold; color:magenta;">magenta</option>
                    <option value="pink" style="font-weight:bold; color:pink;">pink</option>
                    <option value="white" style="font-weight:bold;">white</option>
                    <option value="lightGray" style="font-weight:bold;color:lightGray;">light gray</option>
                    <option value="gray" style="font-weight:bold; color:#A9A9A9;">gray</option>
                    <option value="darkGray" style="font-weight:bold; color:#696969;">dark gray</option>
                    <option value="black" style="font-weight:bold; color:black;">black</option>
                </select></p>



                        <br>
                        <p><label for="shape">Choose a shape:</label></p>
                        <p>	Rectangle: <input id="RECT" type="radio" name="shape" value="RECT"/>
                                Rounded Rectangle: <input id="ROUNDRECT" type="radio" name="shape" value="ROUNDRECT"/>
                                Oval: <input id="OVAL" type="radio" name="shape" value="OVAL"/></p>

                        <p><label for="x">Enter desired shape width:</label>
                        <input type="number" min="1" name="x" value="${Parameters.getStringX()}" /></p>
                        <p><label for="y">Enter desired shape height:</label>
                        <input type="number" min="1" name="y" value="${Parameters.getStringY()}" /></p>


			<div id="right">

			<aside style="float:right; width:50%;">
                        <p id="error>
                            <p><label for="error">Error Message:</label></p>
                                <textarea id="errorMessage" rows="7" cols="50"> </textarea>
                        </p>
                        </aside>
			</div>

                        <br>
                        <p><label for="fstyle">Choose a font style:</label></p>
                        <p><label for="plain">Plain:</label> <input id="REGULAR" type="radio" name="fstyle" value="REGULAR"/>
                                <label for="bold" style="font-weight:bold">Bold:</label><input id="BOLD" type="radio" name="fstyle" value="BOLD"/>
                                <label for="italic" style="font-style:italic;">Italic:</label> <input id="ITALIC" type="radio" name="fstyle" value="ITALIC"/>
                                <label for="bold italic" style="font-weight:bold; font-style:italic;">Bold Italic:</label> <input id="BOLD ITALIC" type="radio" name="fstyle" value="BOLD ITALIC"/></p>

                        <p><label for="ftsize">Enter desired font size:</label>
                        <input type="number" min="1" name="ftsize" value="${Parameters.getFtsizeString()}" /></p>

                <p><input type="submit" value="Generate Badge" name="submit" /></p>
			    </form>
        </div>

        
        <c:if test="${Parameters.getIsActive()}">
        <applet code="org.badge.applet.BadgeApplet" archive="BadgeApplet.jar" width="300" height="250">
            <c:if test="${not empty Parameters.getName()}">
                <param name="NAME" value="${Parameters.getName()}" />                
            </c:if>
            
            <c:if test="${not empty Parameters.getShape()}">
                <param name="SHAPE" value="${Parameters.getShape()}" />
            </c:if>
                
            <c:if test="${not empty Parameters.getColorString()}">
                <param name="COLOR" value="${Parameters.getColorString()}" />
            </c:if>
                
            <c:if test="${not empty Parameters.getBgcolor()}">
                <param name="BGCOLOR" value ="${Parameters.getBgcolor()}" />
            </c:if>
                

            <c:if test="${not empty Parameters.getStringX()}">
                <param name="X" value ="${Parameters.getStringX()}" />
            </c:if>

            <c:if test="${not empty Parameters.getStringY()}">
                <param name="Y" value="${Parameters.getStringY()}" />
            </c:if>

            <c:if test="${not empty Parameters.getFtstyle()}">
                <param name="FTSTYLE" value="${Parameters.getFtstyle()}" />
            </c:if>

            <c:if test="${not empty Parameters.getFtsizeString()}">
                <param name="FTSIZE" value="${Parameters.getFtsizeString()}" />
            </c:if>

        </applet>

            <script>
                var textcolors = document.getElementById('textcolors');
                textcolors.value = "${Parameters.getColorString()}";

                var bgcolors = document.getElementById('bgcolors');
                bgcolors.value = "${Parameters.getBgcolor()}";

                document.getElementById("${Parameters.getShape()}").checked = true;


                function setError(errorMessage){
                    document.getElementById("errorMessage").value = errorMessage;
                }
           </script>
            <script>
                document.getElementById("${Parameters.getFtstyle()}").checked = true;
            </script>
        </c:if>
    </body>
</html>