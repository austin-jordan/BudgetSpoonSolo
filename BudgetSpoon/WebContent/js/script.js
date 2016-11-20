$(document).ready(function() { 
  
	$('#BudgetSpoon').hover(function() {
    $(this).css("color", "#E0E0E0");
  },
  function() {
    $(this).css("color", "#F0F0F0");
  });

  $('#BudgetSpoon').hover(function() {
    $(this).css("border-color", "#C0C0C0");
  },
  function() {
    $(this).css("border-color", "#D8D8D8");
  });

  $('nav a').hover(function() {
    $(this).css("color", "#F0F0F0");
  },
  function() {
    $(this).css("color", "#C8C8C8");
  });
  
  $('input').hover(function() {
	  $(this).css("background-color", "#A0A0A0");
  },
  function() {
	  $(this).css("background-color", "#f8f7f7");
  });

  $('select').hover(function() {
    $(this).css("background-color", "#A0A0A0");
  },
  function() {
    $(this).css("background-color", "#f8f7f7");
  });

//  $('select').click(function() {
//  });
//   $('select').selectmenu({
//     background: "#A0A0A0"
//  });

  $(':submit').hover(function() {
    $(this).css("background-color", "#A0A0A0");
  },
  function() {
    $(this).css("background-color", "#f8f7f7");
  });

  $(':checkbox').hover(function() {
    $(this).css("background-color", "#A0A0A0");
  },
  function() {
    $(this).css("background-color", "#f8f7f7");
  });

});
