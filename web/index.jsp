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
            <form name="badgeForm" action="BadgeServlet" method="POST">

				<aside style="float:right; width:35%;">
				<p>PLACEHOLDER</p>
				</aside>

                <p><label for="name">Enter your name:</label>
				<input type="text" name="name" value=""/></p>

                <p><label for="textcolors">Select a text & shape color:</label>
                <select name="textcolors">
                    <option value="red" style="font-weight:bold; color:red;">red</option>
                    <option value="orange" style="font-weight:bold; color:orange;">orange</option>
                    <option value="yellow" style=" font-weight:bold; color:yellow;">yellow</option>
                    <option value="green" style="font-weight:bold; color:#00FF00;">green</option>
                    <option value="cyan" style="font-weight:bold; color:cyan;">cyan</option>
                    <option value="blue" style="font-weight:bold; color:blue;">blue</option>
                    <option value="magenta" style="font-weight:bold; color:#FF00FF;">magenta</option>
                    <option value="pink" style="font-weight:bold; color:pink;">pink</option>
                    <option value="white" style="font-weight:bold;">white</option>
                    <option value="lightGray" style="font-weight:bold; color:lightGray;">light gray</option>
                    <option value="gray" style="font-weight:bold; color:#A9A9A9;">gray</option>
                    <option value="darkGray" style="font-weight:bold; color:#696969;">dark gray</option>
                    <option value="black" style="font-weight:bold; color:black;">black</option>
                </select></p>

				<p><label for="bgcolors">Select a background color:</label>
                <select name="bgcolors">                
                    <option value="red" style="font-weight:bold; color:red;">red</option>
                    <option value="orange" style="font-weight:bold; color:orange;">orange</option>
                    <option value="yellow" style=" font-weight:bold; color:yellow;">yellow</option>
                    <option value="green" style="font-weight:bold; color:#00FF00;">green</option>
                    <option value="cyan" style="font-weight:bold; color:cyan;">cyan</option>
                    <option value="blue" style="font-weight:bold; color:blue;">blue</option>
                    <option value="magenta" style="font-weight:bold; color:#FF00FF;">magenta</option>
                    <option value="pink" style="font-weight:bold; color:pink;">pink</option>
                    <option value="white" style="font-weight:bold;">white</option>
                    <option value="lightGray" style="font-weight:bold;color:lightGray;">light gray</option>
                    <option value="gray" style="font-weight:bold; color:#A9A9A9;">gray</option>
                    <option value="darkGray" style="font-weight:bold; color:#696969;">dark gray</option>
                    <option value="black" style="font-weight:bold; color:black;">black</option>
                </select></p>

				<p><label for="shape">Choose a shape:</label></p>
				<p>	Rectangle: <input type="radio" name="shape" value="rect"/>
					Rounded Rectangle: <input type="radio" name="shape" value="roundRect"/>
					Oval: <input type="radio" name="shape" value="oval"/>
				</p>

				<p><label for="x">Enter desired shape width:</label>
				<input type="text" name="x" value="" /></p>
				<p><label for="y">Enter desired shape height:</label>
				<input type="text" name="y" value="" /></p>

				<aside style="float:right; width:35%;">
					<p id="error"> ERROR TEST</p>
				</aside>
				
				<p><label for="fstyle">Choose a font style:</label></p>
				<p><label for="plain">Plain:</label> <input type="radio" name="fstyle" value="plain"/>
					<label for="bold" style="font-weight:bold">Bold:</label><input type="radio" name="fstyle" value="bold"/>
					<label for="italic" style="font-style:italic;">Italic:</label> <input type="radio" name="fstyle" value="italic"/>
					<label for="bold italic" style="font-weight:bold; font-style:italic;">Bold Italic:</label> <input type="radio" name="fstyle" value="bolditalic"/></p>

				<p><label for="ftsize">Enter desired font size:</label>
				<input type="text" name="ftsize" value="" /></p>				

                <p><input type="submit" value="Generate Badge" name="submit" /></p>
            </form>

        </div>
    </body>
</html>