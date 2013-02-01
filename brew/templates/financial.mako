<%inherit file="base.mako"/>
<%block name="content_html">
<script src="/js/cdn/underscore-min.js"></script>
<script src="/js/cdn/backbone-min.js"></script>
<script src="/js/cdn/mustache.min.js"></script>
<script src="/js/utils/financials.js"></script>
<div class="content">
  <h2>production sheets</h2>
  <div class="tab-content by-what-tab-content">
    <div class="by-what-tabs">
      <a data-toggle="tab" href="#by-beer">by beer,</a> <a data-toggle="tab" href="#by-time">by time</a>
    </div>
    <span class="tab-pane active fullbody-tab" id="by-beer">
      <ul class="nav nav-pills">
        <li class="dropdown active">
          <a class="dropdown-toggle" data-toggle="dropdown" href=#>beers <b class="caret"></b></a>
          <!--populated in javascript-->
          <ul class="dropdown-menu beers-dropdown" role="menu">
          </ul>
        </li>
      </ul>
    <div class="tab-content beers-tab-content">
    </div>
    </span>
    <span class="tab-pane fullbody-tab" id="by-time">
      <h3>todo: financials by time...</h3>
    </span>
  </div>
</div>

<script type="unknown" id="beer-financials-tab-content">
  <h2 class="nav-header">{{info.name}}</h2>
  <h2 class="nav-header">Cost</h2>
  <dl>
    <dt>Per barrel: </dt><dd>$ {{costs.perbarrel}}</dd><br/>      
    <dt>Per gallon: </dt><dd>$ {{costs.pergallon}}</dd><br/>  
    <dt>Per pint: </dt><dd>$ {{costs.perpint}}</dd><br/>  
    <dt>Per can: </dt><dd>$ {{costs.percan}}</dd><br/>  
  </dl>
</script>
</%block>
