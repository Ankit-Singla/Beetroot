$(document).ready(function(){

	// var abcd = document.getElementById('navigation');
	// var ih = document.getElementById('inner_header');
	// var ihd = $('#inner_header div');

	// window.addEventListener('scroll', function(event){
	// 	if(window.scrollY >= 552){
	// 		ih.style.position = 'fixed';
	// 		ih.style.top = "0px";
	// 		ih.style.width = "65%";
	// 		ih.style.display = "flex";
	// 		ih.style.justifyContent = "space-around";

	// 		abcd.style.position = 'relative';
	// 		abcd.style.top = '0px';
	// 		abcd.style.width = "100%";
	// 		// abcd.style.zIndex = '999';
	// 		// abcd.style.background.opacity = '1';
	// 		var overview = false, menu = false, cuisines = false, photos = false, reviews = false;
	// 		if(window.scrollY < 564){
	// 			ihd[0].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[1].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[2].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[3].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[4].style.boxShadow = "inset 0 0 0 0 orange";
	// 		}
	// 		else if(window.scrollY >= 564 && window.scrollY < 714){
	// 			ihd[1].style.boxShadow = "inset 0 -10px 0 0 orange";
	// 			ihd[0].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[2].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[3].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[4].style.boxShadow = "inset 0 0 0 0 orange";
	// 		}else if(window.scrollY >= 714 && window.scrollY < 994){
	// 			ihd[2].style.boxShadow = "inset 0 -10px 0 0 orange";
	// 			ihd[0].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[1].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[3].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[4].style.boxShadow = "inset 0 0 0 0 orange";
	// 		}else if(window.scrollY >= 994 && window.scrollY < 1169){
	// 			ihd[3].style.boxShadow = "inset 0 -10px 0 0 orange";
	// 			ihd[0].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[1].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[2].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[4].style.boxShadow = "inset 0 0 0 0 orange";
	// 		}else if(window.scrollY >= 1169){
	// 			ihd[4].style.boxShadow = "inset 0 -10px 0 0 orange";
	// 			ihd[0].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[1].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[2].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[3].style.boxShadow = "inset 0 0 0 0 orange";
	// 		}else{
	// 			ihd[0].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[1].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[2].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[3].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[4].style.boxShadow = "inset 0 0 0 0 orange";
	// 		}
			

	// 	}else{
	// 		ih.style.position = 'relative';
	// 		abcd.style.position = 'relative';
	// 		ih.style.width = "100%";
	// 		abcd.style.width = "100%";

	// 			ihd[0].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[1].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[2].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[3].style.boxShadow = "inset 0 0 0 0 orange";
	// 			ihd[4].style.boxShadow = "inset 0 0 0 0 orange";
	// 	}
	// });






	// window.addEventListener('click', function(event){
	// 	console.log(window.scrollY);
	// });







	// for(var i = 0; i < ihd.length; i++){
	// 	// ihd[i].addEventListener('click', ankit.bind(this, i));
	// 	$($('#inner_header div')[i]).hover(ankitIn.bind(this, i), ankitOut.bind(this, i));
	// }

	// function ankitIn(i, event, context){
	// 	console.log(i);
	// 	console.log(context);
	// 	console.log(event);

	// 	for(var j = 0; j < 5; j++){
	// 		ihd[j].style.backgroundColor = "white";
	// 	}
	// 	ihd[i].style.backgroundColor = "rgba(10, 10, 10, 0.1)";
	// }

	// function ankitOut(i, event, context){
	// 	console.log(i);
	// 	console.log(context);
	// 	console.log(event);

	// 	for(var j = 0; j < 5; j++){
	// 		ihd[j].style.backgroundColor = "rgba(255, 255, 255, 0)";
	// 	}
	// }




	// var icons = $('#icons_bar').children();

	// for(var l = 0; l < icons.length; l++){
	// 	console.log(icons.length);
	// 	icons[l].addEventListener('click', icons_click_handler.bind(null, l));
	// }






	

	// function icons_click_handler(l, event){
	// 	console.log(l);
	// 	console.log(event);

	// 	if(!(is_bookmarked @restaurant))
	// 		icons[l].children[0].style.color= "red";
	// 	else{
	// 		icons[l].children[0].style.color= "black";
	// 	}
	// 	bools = !bools;
	// }



// var stary = document.getElementById('star');
// var divy = document.getElementById('divy');
// var cleary = document.getElementById('clear');

// stary.addEventListener("click", function(){
//   if(divy.style.display == "none"){
//     divy.style.display = "block";
//   }else{
//     divy.style.display = "none";
//   }
// });

// var pees = divy.children;
// for(var i = 0; i < pees.length; i++){
//   pees[i].addEventListener('click', provideRating.bind(null, i));
// }

// function provideRating(k, event){
//   var j = 0;
//   for(; j <= k; j++){
//     pees[j].style.color= "red";
//     console.log(j);
//   }
//   for(; j <= pees.length; j++){
//     pees[j].style.color= "black";
//     console.log(j);
//   }
//   divy.style.display = "none";
// }

// clear.addEventListener('click', function(){
// 	if(pees[0].style.color == "red"){
// 		for(var m = 0; m < pees.length; m++){
// 			pees[m].style.color = "black";
// 		}
// 	}
// });




// rate different cuisines in the details of a restaurant


// share_experience_header.children[1].addEventListener('click', function(){
// 	// rating wala hidden display wala div appear karwana hai aur logic lagana hai rating wala pura
// });
// console.log("ab to write a review");
// share_experience_header.style.display = "block";
 // share_experience_header.children[2].addEventListener('click', function(){
 	// console.log("write a review");
// 	// write a review wale part pe smooth scroll krwana hai ya write a review ka popup display krwana hai
	// $('section#write').css({
	// 	display: "block"
	// });
	// this.style.display = "block";
 // });

// share_experience_header.children[1].addEventListener('onmouseover', hover_effect_experience_header(1, event));
// share_experience_header.children[2].addEventListener('onmouseover', hover_effect_experience_header(2, event));

// function hover_effect_experience_header(pos, event){
// 	console.log(event);
// 	console.log(pos);
// 	share_experience_header.children[pos].style.backgroundColor = "black";
// }


// $($('#outside div')[1]).hover(ankitInHeader.bind(this, 1), ankitOutHeader.bind(this, 1));
// function ankitInHeader(i, event, context){
// 	$($('#outside div')[i]).style.backgroundColor = "grey";
// }
// function ankitOutHeader(i, event, context){
// 	$($('#outside div')[i]).style.backgroundColor = "white";
// }	

// console.log("times");

// $('#outside').on({
// 	mouseenter: function(){
// 		this.style.backgroundColor = "grey";
// 		console.log("here");
// 	},
// 	mouseleave: function(){
// 		this.style.backgroundColor = "white";
// 		console.log("there");
// 	}	
// }, "div");

// $('#outside').on('click', function(){
// 	console.log('something');
// }

// );





// share_experience_header.children[1].addEventListener('mouseout', hover_effect_experience_header_out(1, event));
// share_experience_header.children[2].addEventListener('mouseout', hover_effect_experience_header_out(2, event));

// function hover_effect_experience_header_out(pos, event){
// 	console.log(event);
// 	console.log(pos);
// 	share_experience_header.children[pos].style.backgroundColor = "white";
// }





//newest addition

// $('div#load_more span').on('click', function(){
	
// });



});