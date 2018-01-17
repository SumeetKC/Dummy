$(document).ready(function() {

	$("#registerForm").validate({
		rules : {
			id : {
				required : true,
				number : true
			},
			name : {
				required : true,
				lettersonly : true,
				minlength : 4,
				maxlength : 30

			},
			fname : {
				required : true,
				lettersonly : true,
				minlength : 4,
				maxlength : 30
			},
			mname : {
				required : false,
				lettersonly : true
			},
			phone : {
				required : true,
				number : true,
				maxlength : 10
			},
			email : {
				required : true,
				email : true
			},
			aadhar : {
				required : true,
				number : true,
				maxlength : 12
			}
		},

		messages : {
			id : {
				required : "Please Enter a Valid Id",
				number : "Enter Digits only"
			},
			name : {
				required : "Please Enter Name",
				lettersonly : "Enter Letters only",
				minlength : "Enter minimum 4 Letters",

			},
			fname : {
				required : "Please Enter Father Name",
				lettersonly : "Enter Letters only",
				minlength : "Enter minimum 4 Letters",

			},
			mname : {
				lettersonly : "Enter Letters only"
			},
			phone : {
				required : "Please Enter Phone Number",
				number : "Enter Digits only",
				maxlength : "Please Enter Valid Phone"
			},
			email : {
				required : "Please Enter Email",
				email : "Please Enter Valid Email"
			},
			aadhar : {
				required : "Please Enter Aadhar Number",
				number : "Enter Digits only",
				maxlength : "Please Enter Valid Aadhar"
			}

		},
		submitHandler : function(form) {
			form.submit();
		}

	});

});