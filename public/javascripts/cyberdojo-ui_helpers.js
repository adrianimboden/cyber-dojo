
var cyberDojo = (function($cd, $j) {
  
  $cd.centeredDiv = function(node) {
    var div = $j('<div>', {
     align: 'center' 
    });
    div.append(node);
    return div;
  };
  
  $cd.avatarImage = function(avatar_name, imageSize) {
    return $j('<img>', {
       alt: avatar_name,
      'class': "avatar_image",
      'height': imageSize,
      'width': imageSize,
       src: "/images/avatars/" + avatar_name + ".jpg",
       title: avatar_name
    });
  };

  $cd.htmlPanel = function(content) {
    return '<div class="panel" style="font-size: 2.0em;">' + content + '</div>'
  };

  $cd.alert = function(message, title) {
    $j('<div>')    
      .html($cd.htmlPanel(message))
      .dialog({
	autoOpen: false,
	title: typeof(title) !== 'undefined' ? $cd.h1(title) : $cd.h1('alert!'),
	modal: true,
	width: 600,
	buttons: {
	  ok: function() {
	    $j(this).dialog('close');
	  }
	}
      })
      .dialog('open');  
  };

  $cd.h1 = function(title) {
    return '<h1>' + title + '</h1>';  
  };
  
  $cd.fakeFilenameButton = function(filename) {
    return $cd.makeTable(
        '<div class="filename" style="background:Cornsilk;color:#003C00;">'
      +   '<input type="radio"'
      +          'name="filename' + filename + '"'
      +          'checked="checked"'
      +          'value="filename"/>'
      +   '<label>' + '&nbsp;' + filename + '</label>'
      + '</div>');
  };
  
  return $cd;
})(cyberDojo || {}, $j);



