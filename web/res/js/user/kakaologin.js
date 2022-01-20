{
    kakaoLoginElem = document.querySelector('#kakaologin');

    kakaoLoginElem.addEventListener('click', ()=> {
        kakaoLogin();
    });

    Kakao.init("1cdf5191c92e44feb67b46c6a6586582");

    function kakaoLogin() {
        Kakao.Auth.login({
            scope: 'account_email, gender, birthday',
            success: function (authObj) {
                console.log(authObj);
                Kakao.API.request({
                    url:'/v2/user/me',
                    success: res => {
                        const account_email = res.account_email;
                        const gender = res.gender;
                        const birthday = res.birthday;
                        console.log();
                    }
                });
            }
        });
    }
}
