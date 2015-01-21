// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
jQuery(function($){
	//都道府県のリストがchangeで発動
  $("#jusho_todofuken_id").change(function(){
		//そもそもchangeによって都道府県は何になったか取得
  var todofuken_id = $("#jusho_todofuken_id").val();
		//市町村のリストを削除
		$("select#jusho_shichoson_id option").remove();
	
		//rails側に都道府県のidを渡して、市町村をもらうURL生成
  var url = "todofuken_select.json?todofuken_id=" + todofuken_id;
		//railsからはjson形式で受け取る
		//受け取った要素の数だけ市町村のリストに追加する
    $.getJSON(url, function(data){
      $.each(data,function(i,items){
				$("select#jusho_shichoson_id").append($('<option>', { value : items.id }).text(items.name));
			})
    });
		
		
	});
});