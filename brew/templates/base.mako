<html>
  <head>
    <link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Croissant+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Permanent+Marker' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>



    <script type="text/javascript" src="/js/cdn/jquery.min.js" ></script>
    <script type="text/javascript" src="/js/cdn/underscore-min.js" ></script>
    <script type="text/javascript" src="/js/cdn/backbone-min.js" ></script>
    <script type="text/javascript" src="/js/cdn/mustache.min.js" ></script>
    <script src="/js/deps/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/utils/coverflow.js"></script>

  </head>
  <body class="${request.matched_route.name}">
    <div class="header">
      <%include file="include/navbar.mako"/>
    </div>
    <%block name="content_html"/>
    <div class="impact footer">TBD Brewing LLC, 2013</div> 
  </body> 
</html>


