$(function()
  {
  
	  $('#page').corner({
			  tl: { radius: 6 },
			  tr: { radius: 6 },
			  bl: { radius: 6 },
			  br: { radius: 6 },
			  antiAlias: true,
			  autoPad: false,
			  validTags: ["div"]
		  });
		  
		$('#headerTop').corner({
			  tl: { radius: 6 },
			  tr: { radius: 6 },
			  bl: { radius: 6 },
			  br: { radius: 6 },
			  antiAlias: true,
			  autoPad: false,
			  validTags: ["div"]
		  });
		  
		$('.focusBox').corner({
			  tl: { radius: 6 },
			  tr: { radius: 6 },
			  bl: { radius: 6 },
			  br: { radius: 6 },
			  antiAlias: true,
			  autoPad: false,
			  validTags: ["div"]
		  });
		  
		  $('#searchArea').corner({
			  tl: { radius: 3 },
			  tr: { radius: 3 },
			  bl: { radius: 3 },
			  br: { radius: 3 },
			  antiAlias: true,
			  autoPad: false,
			  validTags: ["div"]
		  });
		  
		  $('.test').corner({
			  tl: { radius: 6 },
			  tr: { radius: 6 },
			  bl: { radius: 6 },
			  br: { radius: 6 },
			  antiAlias: true,
			  autoPad: false,
			  validTags: ["input"]
		  });

     		
 }
  );
