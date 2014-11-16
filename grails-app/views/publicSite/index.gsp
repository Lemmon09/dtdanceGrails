<!DOCTYPE HTML>
<html>
<head>
    <title>Dorothy Thomas School of Dance &amp; Theatre Arts</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <asset:javascript src="application.js"/>
    <asset:stylesheet href="application.css"/>
</head>
<body>
    <div class="container">
    <div class="row">
        <div class="hidden-md"> <!-- Left spacer pane --></div>
        <div class="col-lg-10 col-md-12">
            <header style="height: 250px;">
                <a href="${createLink(controller: 'PublicSite', action: 'revealContent', params: [category: 'news'])}" target="iframe">
                    <g:img dir="images" file="danceLogo.gif" alt="" width="230px" height="250px" border="0" style="float:left;" />
                </a>
                <div id="header-carousel" class="carousel slide" data-ride="carousel" style="float:left; height: 250px;">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <g:each status="i" in="${pics}" var="it">
                            <li data-target="#header-carousel" data-slide-to="${i}" ${(i==0) ? "class='active'" : ""}></li>
                        </g:each>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <g:each status="i" in="${pics}" var="pic">
                            <div class="item headerImage ${(i==0) ? 'active' : ''}">
                                <g:img dir="images/history" file="${pic}" alt="" border="0" />
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
            <section class="row">
                <nav class="col-lg-2">
                    <g:set var="imageWidth" value="100px" />
                    <g:set var="imageHeight" value="100px" />
                    <ul>
                        <li>
                            <div class="dropdown linkGroup">
                                <a id="ourStudioLink" data-toggle="dropdown" href="#">
                                    <g:img class="navPic sepia" dir="images" file="about.gif" 
                                            alt="" width="${imageWidth}" height="${imageHeight}" border="0" id="ourStudioLinkPic"/>                                           <h3> Our Studio </h3>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-left" role="menu" aria-labelledby="ourStudioLink">
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContent', 
                                                params: [category: 'missionStatement'])}">
                                            Mission Statement
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContent', 
                                                params: [category: 'instructors'])}">
                                            Our Instructors
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContent', 
                                                params: [category: 'history'])}">
                                            History
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContent', 
                                                params: [category: 'endorsements'])}">
                                            Endorsements
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown linkGroup">
                                <a id="classesLink" data-toggle="dropdown" target="iframe">
                                    <g:img class="navPic" dir="images" file="classes.gif" 
                                            alt="" width="${imageWidth}" height="${imageHeight}" border="0" id="Classes"/>
                                    <h3> Classes </h3>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-left" role="menu" aria-labelledby="classesLink">
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContent', 
                                                params: [category: 'classesOverview'])}">
                                            Overview
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContent', 
                                                params: [category: 'danceClasses'])}">
                                            Dance
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContent', 
                                                params: [category: 'theatre'])}">
                                            Theatre
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContent', 
                                                params: [category: 'pilatePT'])}">
                                            Overview
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContent', 
                                                params: [category: 'registration'])}">
                                            Registration & Tuition
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown linkGroup">
                                <a id="studioLink" data-toggle="dropdown" target="iframe">
                                    <g:img class="navPic" dir="images" file="studio.gif" 
                                            alt="" width="${imageWidth}" height="${imageHeight}" border="0" id="Studio"/>
                                    <h3> Current Students </h3>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-left" role="menu" aria-labelledby="studioLink">
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContentProtected', 
                                                params: [category: 'announcements'])}">
                                            Announcements
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContentProtected', 
                                                params: [category: 'eventsCalendar'])}">
                                            Event Calendar
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContentProtected', 
                                                params: [category: 'classSchedules'])}">
                                            Class Schedule
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContentProtected', 
                                                params: [category: 'newsletter'])}">
                                            Newsletter
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealContentProtected', 
                                                params: [category: 'studioPolicies'])}">
                                            Studio Policies
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown linkGroup">
                                <a id="galleryLink" data-toggle="dropdown" target="iframe"
                                        href="${createLink(controller: 'PublicSite', action: 'gallery', 
                                        params: [category: 'history'])}">
                                    <g:img class="navPic" dir="images" file="gallery.gif" 
                                            alt="" width="${imageWidth}" height="${imageHeight}" border="0" id="Gallery"/>
                                    <h3> Media Gallery </h3>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-left" role="menu" aria-labelledby="galleryLink">
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealGallery', 
                                                params: [category: 'history'])}">
                                            History
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealGallery', 
                                                params: [category: 'recitals'])}">
                                            Recitals
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealGallery', 
                                                params: [category: 'trips'])}">
                                            DT Travel
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" target="iframe" 
                                                href="${createLink(controller: 'PublicSite', action: 'revealGallery', 
                                                params: [category: 'alumni'])}">
                                            Alumni
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
                <!--<div class="verticalRule"></div>-->
                <main class="col-lg-10">
                    <iframe src="${createLink(controller: 'PublicSite', action: 'revealContent', params: [category: 'news'])}"
                            name="iframe" marginwidth="0" vspace="0" hspace="0" frameborder="0" marginheight="0"
                            width="750px" height="400px" scrolling="auto">
                    </iframe>
                </main>
            </section>
        </div> <!-- Centered Content -->
    </div><!--row-->
    </div><!--container-->
    <div class="hidden-md"> <!--Right spacer pane --></div>
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
        
        $('.dropdown-toggle').click(function() {
            var location = $(this).attr('href');
            window.location.href = location;
            return false;
        });
    </script>
</html>