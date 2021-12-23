function agreeAll(form) {
	if (form.checkbox[0].checked === true) {
		for (let i = 0; i < form.checkbox.length; i++) {
			form.checkbox[i].checked = true;
		}
	}
	else if (form.checkbox[0].checked === false) {
		for (let i = 0; i < form.checkbox.length; i++) {
			form.checkbox[i].checked = false;
		}
	}
}

function agreeCheck(form) {
	if (form.checkbox[0].checked === true) {
		form.checkbox[0].checked = false;
	}
}

function agreeJoin(form) {
	const change = document.querySelector("#alert");

	if (form.checkbox[1].checked === true && form.checkbox[2].checked === true) {
		change.style.visibility = "hidden";
		form.submit();
	}
	if (form.checkbox[1].checked === false || form.checkbox[2].checked === false) {
		change.style.visibility = "visible";
	}
}

function phoneChecking() {
	const joinForm = document.querySelector("#form");
	const alert7 = document.querySelector("#alert7");
	if (joinForm.phone.value === "") {
		alert7.style.visibility = "visible";
	}
	else {
		alert7.style.visibility = "hidden";
		joinForm.phoneText.value = "123456";
	}
}

function Join() {
	const joinForm = document.querySelector("#form");
	const alert1 = document.querySelector("#alert1");
	const alert2 = document.querySelector("#alert2");
	const alert3 = document.querySelector("#alert3");
	const alert4 = document.querySelector("#alert4");
	const alert5 = document.querySelector("#alert5");
	const alert6 = document.querySelector("#alert6");
	const alert7 = document.querySelector("#alert7");
	const alert8 = document.querySelector("#alert8");
	let check = 1;

	if (joinForm.id.value === "") {
		alert1.style.visibility = "visible";
		check = 0;
	}
	else {
		alert1.style.visibility = "hidden";
	}

	if (joinForm.pw.value === "") {
		alert2.style.visibility = "visible";
		check = 0;
	}
	else {
		alert2.style.visibility = "hidden";
	}

	if (joinForm.pwCheck.value === "") {
		alert3.innerText = "필수 정보입니다."
		alert3.style.visibility = "visible";
		check = 0;
	}
	else if (joinForm.pwCheck.value === joinForm.pw.value) {
		alert3.innerText = "필수 정보입니다."
		alert3.style.visibility = "hidden";
	}
	else if (joinForm.pwCheck.value !== joinForm.pw.value) {
		alert3.innerText = "비밀번호가 일치하지 않습니다."
		alert3.style.visibility = "visible";
		check = 0;
	}

	if (joinForm.name.value === "") {
		alert4.style.visibility = "visible";
		check = 0;
	}
	else {
		alert4.style.visibility = "hidden";
	}

	if (joinForm.year.value === "") {
		alert5.style.visibility = "visible";
		check = 0;
	}
	else if (joinForm.month.value === "월") {
		alert5.style.visibility = "visible";
		check = 0;
	}
	else if (joinForm.day.value === "") {
		alert5.style.visibility = "visible";
		check = 0;
	}
	else if (joinForm.year.value !== "" && joinForm.month.value !== "월" && joinForm.day.value !== "") {
		alert5.style.visibility = "hidden";
	}

	if (joinForm.gender.value === "성별") {
		alert6.style.visibility = "visible";
		check = 0;
	}
	else {
		alert6.style.visibility = "hidden";
	}

	if (joinForm.phone.value === "") {
		alert7.style.visibility = "visible";
		check = 0;
	}
	else {
		alert7.style.visibility = "hidden";
	}

	if (joinForm.phoneText.value === "") {
		alert8.style.visibility = "visible";
		check = 0;
	}
	else {
		alert8.style.visibility = "hidden";
	}
	if (check === 1) {
		form.submit();
	}
}




