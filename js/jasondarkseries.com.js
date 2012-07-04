$("#reader_sheet").each(function() { 
  $("body").html(this);
  $(this).find("p").css('font-size', 16);
  $(this).find("#reader_content").css('width', 880);
});
