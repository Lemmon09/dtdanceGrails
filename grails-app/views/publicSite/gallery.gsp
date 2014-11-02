<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Untitled Document</title>
    <link type="text/css" rel="stylesheet" href="${resource(dir: 'css', file: 'dtdance.css')}" />
    <asset:javascript src="application.js"/>
    <g:javascript src="bootstrap.min.js" />
    <link type="text/css" rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" />
</head>

<body>
    <g:img dir="images" file="galleryTitle.gif" alt="Gallery Title" width="600px" height="53px" border="0" style="float:left;" />
    <hr>
    <header class="categories">
        <ul>
            <li>
                <a href="${createLink(action: 'gallery', params: 'Studio')}">
                    <h2>Studio</h2>
                </a>
            </li>
            <li>
                <a href="${createLink(action: 'gallery', params: 'Fun')}">
                    <h2>Fun</h2>
                </a>
            </li>
            <li>
                 <a href="${createLink(action: 'gallery', params: 'Trips')}">
                    <h2>Trips</h2>
                </a>
            </li>
            <li>
                <a href="${createLink(action: 'gallery', params: 'Recitals')}">
                    <h2>Recitals</h2>
                </a>
            </li>
            <li>
                <a href="${createLink(action: 'gallery', params: 'History')}">
                    <h2>History</h2>
                </a>
            </li>
        </ul>
    </header>


    <!-- Gallery Div here -->
    <div id="gallery-carousel" class="carousel slide" data-ride="carousel" style="float:left; height: 261px;">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <g:each status="i" in="${pics}" var="it">
                <li data-target="#gallery-carousel" data-slide-to="${i}" ${(i==0) ? "class='active'" : ""}></li>
            </g:each>
        </ol>
        
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <g:each status="i" in="${pics}" var="it">
                <div class="item ${(i==0) ? 'active' : ''}">
                    <g:img dir="images/${it.directory}" file="${it.filename}" alt="" width="${it.width}px" height="${it.height}px" border="0" />
                </div>
            </g:each>
        </div>
        
        <!-- Controls -->
        <a class="left carousel-control" href="#gallery-carousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#gallery-carousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
        
</body>
</html>