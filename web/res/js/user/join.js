{
    let idChkState = 2; //0: 아이디 사용 불가능, 1:아이디 사용가능, 2: 체크 안함

    const joinFrmElem = document.querySelector('#join_frm');
    const idRegex = /^([a-zA-Z0-9]{4,15})$/;//대소문자 + 숫자 조합 4~15글자
    const pwRegex = /^([a-zA-Z0-9!@_]{4,20}$)/;//대소문자 + 숫자 조합 4~15글자
    const nmRegex = /^([가-힣]{2,10})$/; //한글 2~10자 조합 (영어, 특수기호X)
    const phRegex = /^([0-9]{11})$/;
    const emailRegex = /^(?=.{8,50}$)([0-9a-z_]{4,})@([0-9a-z][0-9a-z\-]*[0-9a-z]\.)?([0-9a-z][0-9a-z\-]*[0-9a-z])\.([a-z]{2,15})(\.[a-z]{2})?$/;
    const birthRegex = /^([0-9]{6})$/;

    if (joinFrmElem) {
        joinFrmElem.addEventListener('submit', (e) => {

            const uid = joinFrmElem.uid.value;
            const upw = joinFrmElem.upw.value;
            const upwChk = joinFrmElem.upw_check.value;
            const nm = joinFrmElem.nm.value;
            const ph = joinFrmElem.ph.value;
            const email = joinFrmElem.email.value;
            const birth = joinFrmElem.birth.value;

            if (!idRegex.test(uid)) {
                alert('아이디는 대소문자, 숫자조합으로 4~20자 되어야 합니다.');
                e.preventDefault();
            } else if (!pwRegex.test(upw)) {
                alert('비밀번호는 대소문자, 숫자, !, @, _ 조합으로 4~100자 되어야합니다.');
                e.preventDefault();
            } else if (upw !== upwChk) {
                alert('비밀번호 확인을 확인해주세요.');
                e.preventDefault();
            } else if (!nmRegex.test(nm)) {
                alert('이름은 한글 조합으로 2~10자 여야합니다.');
                e.preventDefault();
            } else if (!phRegex.test(ph)) {
                alert('010 포함, - 없이 11자리를 입력해주세요.');
                e.preventDefault();
            } else if (!emailRegex.test(email)) {
                alert('이메일 형식을 확인해주세요. Ex) abc123@examle.com');
                e.preventDefault();
            } else if (!birthRegex.test(birth)) {
                alert('생년월일 6자리를 확인해주세요.');
                e.preventDefault();
            }
        })
    }
    //하기는 했는데 아직 이해못함
    //https://hianna.tistory.com/433
    function checkSelectAll(checkbox)  {
        const agreeall
            = document.querySelector('input[name="agreeall"]');

        if(checkbox.checked === false)  {
            agreeall.checked = false;
        }
    }

    function selectAll(selectAll)  {
        const checkboxes
            = document.getElementsByName('agree');

        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked
        })
    }



}