$("#contents span.links").each(function() {
  var link  = $(this).find("a[href*=&cn]:last");
  var span = link.parent();
  if(link.length > 0) {
    var profileLink = link.attr("href").replace("gameinfo", "usermodules\/profile");
    var editProfileLink = profileLink + "&action=EditSheet";
    var pLink = $("<a>Sheet</a>").attr('href', profileLink).attr('target', '_new');
    var eLink = $("<a>Edit Sheet</a>").attr('href', editProfileLink).attr('target', '_new');
    span.append(" | ").append(pLink).append(" | ").append(eLink);
  }
});


$("select[name='posting_as']").each(function() {
  $(this).after($("<span class='profileLinks' style='padding-left:5px'></span>"));
  $(this).change(function() { 
    var character = $(this).val();
    $(".profileLinks").html('');

    if(character != "") {
      var subject = $("input[name='subject']");
      var url = $("#header").find("a[title='View/edit your character(s) details.']").attr('href')
      var profileLink = url + "&cn=" + character;
      var editProfileLink = profileLink + "&action=EditSheet";
      var pLink = $("<a>Sheet</a>").attr('href', profileLink).attr('target', '_new');
      var eLink = $("<a>Edit Sheet</a>").attr('href', editProfileLink).attr('target', '_new');
      $(".profileLinks").append(pLink).append(" | ").append(eLink);
    }
  });
});
