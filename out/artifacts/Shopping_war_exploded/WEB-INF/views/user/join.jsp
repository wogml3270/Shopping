<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>

<div>
    <div class="text-aline-center m-20 font-size-30">회원가입</div>
    <form action="/user/join" method="post" id="join_frm">
        <hr>
        <div style="display: flex; justify-content: space-between">
            <h3 class="font-size-20">기본정보</h3>
            <p>*필수입력사항</p>
        </div>
        <div>
            <table>
                <!--colgroup : 테이블에서 서식 지정을 위해 하나이상의 열을 그룹으로 묶을때 사용 http://www.tcpschool.com/html-tags/colgroup-->
                <colgroup>
                    <col class="w-200">
                    <col class="w-auto">
                </colgroup>
                <tbody>
                <tr>
                    <th class="display-b-f-l">아이디*</th>
                    <td><input class="display-b-f-l" type="text" id="uid" ></td>
                </tr>
                <tr>
                    <th class="display-b-f-l">비밀번호*</th>
                    <td><input class="display-b-f-l" type="password" id="upw"></td>
                </tr>
                <tr>
                    <th class="display-b-f-l">비밀번호 확인*</th>
                    <td><input class="display-b-f-l" type="password" id="upw_check" id="upw-check"></td>
                </tr>
                <tr>
                    <th class="display-b-f-l">이름*</th>
                    <td><input class="display-b-f-l" type="text" id="nm"></td>
                </tr>

                <tr>
                    <th class="display-b-f-l">일반전화</th>
                    <td>
                        <input class="display-b-f-l" type="text" id="hnum">
                    </td>
                </tr>
                <tr>
                    <th class="display-b-f-l">휴대전화*</th>
                    <td>
                        <input class="display-b-f-l" type="text" id="ph">
                    </td>
                </tr>
                <tr>
                    <th class="display-b-f-l">주소</th>
                    <td>
                        <input class="display-b-f-l" type="text" id="addr">
                    </td>
                </tr>
                <tr>
                    <th class="display-b-f-l">성별*</th>
                    <td>
                        <label class="display-b-f-l"><input type="radio" name="gender" value="1" checked>남성</label>
                        <label class="display-b-f-l"><input type="radio" name="gender" value="2">여성</label>
                    </td>
                </tr>
                <th class="display-b-f-l">이메일*</th>
                <td><input class="display-b-f-l" type="text" id="email"></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div>
            <hr>
            <div style="display: flex; justify-content: space-between">
                <h3 class="font-size-20">추가정보</h3>
            </div>
            <div>
                <table>
                    <colgroup>
                        <col class="w-200">
                        <col class="w-auto">
                    </colgroup>
                    <tbody>
                    <tr>
                        <th class="display-b-f-l">생년월일*</th>
                        <td><input class="display-b-f-l" type="text" id="birth"></td>
                    </tr>
                    <tr>
                        <th class="display-b-f-l">지역</th>
                        <td>
                            <select name="location" id="location">
                                <option value="basic">지역</option>
                                <option value="location1">경기</option>
                                <option value="location2">서울</option>
                                <option value="location3">인천</option>
                                <option value="location4">강원</option>
                                <option value="location5">충남</option>
                                <option value="location6">충북</option>
                                <option value="location7">대전</option>
                                <option value="location8">경북</option>
                                <option value="location9">경북</option>
                                <option value="location10">경남</option>
                                <option value="location11">대구</option>
                                <option value="location12">부산</option>
                                <option value="location13">울산</option>
                                <option value="location14">전북</option>
                                <option value="location15">전남</option>
                                <option value="location16">광주</option>
                                <option value="location17">제주</option>
                                <option value="location18">해외</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th class="display-b-f-l">추천인 아이디</th>
                        <td><input class="display-b-f-l" type="text" name="recommendation"></td>
                    </tr>
                    </tbody>
                </table>
                <hr>
                <div style="display: flex; justify-content: space-between">
                    <h3 class="font-size-20 m-b-10">약관</h3>
                </div>
                <div>
                    <label class="display-b-f-l">
                        <input type="checkbox" name="agreeall" value="agreeall" onclick="selectAll(this)">
                        <span>이메일수신 동의(선택), sms수신 동의(선택)에 모두 동의합니다.</span>
                    </label>
                </div>

            </div>
            <div>
                <span class="display-b-f-l">[선택]이메일수신 동의</span>
                <label>
                    <textarea readonly class="m-tb-10" style="width: 100%; height:100px; resize: none;">할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로 받아보실 수 있습니다.</textarea>
                </label>
            </div>

            <div>
                <label class="display-b-f-l">
                    <span>이메일수신에 동의하십니까?</span>
                    <input type="checkbox" name="agree" value="email" onclick="checkSelectAll(this)">동의함
                </label>
            </div>

            <div>
                <span class="display-b-f-l">[선택]sms수신 동의</span>
                <label>
                    <textarea readonly style="width: 100%; height:100px; resize: none;">할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로 받아보실 수 있습니다.</textarea>
                </label>
            </div>

            <div>
                <label class="display-b-f-l">
                    <span>[선택]sms수신에 동의하십니까?</span>
                    <input type="checkbox" name="agree" value="sms" onclick="checkSelectAll(this)"> 동의함
                </label>
            </div>
        </div>

        <div class="text-aline-center">
            <input type="submit" value="회원가입" id="join_submit">
        </div>
    </form>
</div>