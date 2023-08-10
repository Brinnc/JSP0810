<!--여긴 html문서 영역 
	[1] JSP의 코드 작성 영역
	jsp에서 코드를 작성할 수 있는 영역

		1) 지시 영역 [%@ %]_꺽쇠를 쓰면 주석 안이어도 인식되어서 대괄호로 대체함
		: 현재 페이지에 대한 정보를 작성하는 곳

		2) 선언부 [%! %]
		: 멤버 영역(멤버 변수 및 멤버메서드)

		3) 스크립틀릿 [% %]
		: 현재 이 jsp페이지의 메서드 영역

-->
<%@ page contentType="text/html;charset=utf-8"%>
<%!
	//선언부
	private String name="tiger";
	
	public String getName(){
		return name;
	}
%>
<%
	/*여긴 java의 코드가 올 수 있음*/
	String result=getName(); //멤버 메서드 호출
	out.print(result);

%>