function chkForm(){
	var f = document.frm;    
	
	if(frm.title.value == ''){   
		alert("제목을 입력해주세요.");
		return false;
	}
	
	if(frm.user_name.value == ''){  
		alert("이름을 입력해주세요.");
		return false;
	}
	
	if(frm.content.value == ''){  
		alert("글내용을 입력해주세요.");
		return false;
	}
	
	f.submit();				
}

function chkDelete(board_no){  
	const result = confirm("삭제하시겠습니까?");  
	
	if(result){
		
		
		const url = location.origin; 
		location.href = url + "/mini/delete?board_no=" + board_no;
	} else {
		false;
	}	
}