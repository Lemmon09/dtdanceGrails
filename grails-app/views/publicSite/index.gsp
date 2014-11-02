<!DOCTYPE HTML>
<html>
<head>
<title>Dorothy Thomas School of Dance &amp; Theatre Arts</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<asset:javascript src="application.js"/>
<g:javascript src="bootstrap.min.js" />
<g:javascript src="vintage.js" />
<link type="text/css" rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" />
<link type="text/css" rel="stylesheet" href="${resource(dir: 'css', file: 'dtdance.css')}" />

</head>
<body>

<div> <!-- Left spacer pane -->
</div>

<div style="align:center; width:1000px;">
    <header style="height: 261px;">
        <g:img dir="images" file="danceLogo.gif" alt="" width="230px" height="261px" border="0" style="float:left;" />
        <div id="header-carousel" class="carousel slide" data-ride="carousel" style="float:left; height: 261px;">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <g:each status="i" in="${pics}" var="it">
                    <li data-target="#header-carousel" data-slide-to="${i}" ${(i==0) ? "class='active'" : ""}></li>
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
            <a class="left carousel-control" href="#header-carousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#header-carousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </header>
    <hr>
    <section>
        <nav style="float:left;">
            <ul>
                <g:set var="imageWidth" value="100px" />
                <g:set var="imageHeight" value="100px" />
                <li><a href="${createLink(controller: 'PublicSite', action: 'about')}" target="iframe">
                    <div class="linkGroup">
                        <g:img class="navPic sepia" dir="images" file="about.gif" 
                                alt="" width="${imageWidth}" height="${imageHeight}" border="0" id="About"/>                        
                        <h3> About the Studio </h3>
                    </div>
                </a></li>
                <li><a href="${createLink(controller: 'PublicSite', action: 'classes')}" target="iframe">
                    <div class="linkGroup">
                        <g:img class="navPic" dir="images" file="classes.gif" 
                                alt="" width="${imageWidth}" height="${imageHeight}" border="0" id="Classes"/>
                        <h3> Dance Classes </h3>
                    </div>
                </a></li>
                <li><a href="${createLink(controller: 'PublicSite', action: 'events')}" target="iframe">
                    <div class="linkGroup">
                        <g:img class="navPic" dir="images" file="events.gif" 
                                alt="" width="${imageWidth}" height="${imageHeight}" border="0" id="Events"/>
                        <h3> Events Calendar </h3>
                    </div>                
                </a></li>
                <li><a href="${createLink(controller: 'PublicSite', action: 'studio')}" target="iframe">
                    <div class="linkGroup">
                        <g:img class="navPic" dir="images" file="studio.gif" 
                                alt="" width="${imageWidth}" height="${imageHeight}" border="0" id="Studio"/>
                        <h3> Studio Etiquette </h3>                        
                    </div>
                </a></li>
                <li><a href="${createLink(controller: 'PublicSite', action: 'gallery')}" target="iframe">
                    <div class="linkGroup">
                        <g:img class="navPic" dir="images" file="gallery.gif" 
                                alt="" width="${imageWidth}" height="${imageHeight}" border="0" id="Gallery"/>
                        <h3> Media Gallery </h3>
                    </div>
                </a></li>
            </ul>
        </nav>
        <div class="verticalRule"></div>
        <main style="float:left;">
            <iframe name="iframe" src="${createLink(controller: 'PublicSite', action: 'news')}"
                    marginwidth="0" vspace="0" hspace="0" frameborder="0" marginheight="0"width="650" height="625" scrolling="auto">
            </iframe>
        </main>
    </section>

</div> <!-- Centered Content -->

<div> <!-- Right spacer pane -->
</div>

</body>

<script>
    var options = {
        onError: function() {
            alert('ERROR');
        }
    };
    var effect = {
        vignette: 0.6,
        sepia: true
    };
    var img = document.getElementById('About');
    new VintageJS(img, options, effect);
    var img = document.getElementById('Classes');
    new VintageJS(img, options, effect);
    var img = document.getElementById('Events');
    new VintageJS(img, options, effect);
    var img = document.getElementById('Studio');
    new VintageJS(img, options, effect);
    var img = document.getElementById('Gallery');
    new VintageJS(img, options, effect);
</script>
</html>