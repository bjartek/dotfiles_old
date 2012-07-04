jQuery(".display").each(function() { 
  var body = jQuery(this).html();
  jQuery(this).html(body.replace("<br>", "").replace("<br>", ""));
});
