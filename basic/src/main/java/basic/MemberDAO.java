package basic;

import java.util.ArrayList;

public class MemberDAO {
	
	private ArrayList<MemberVO> list;
	private MemberDAO() {
		list= new ArrayList<MemberVO>();
		setDummy();
	}
	
	static private MemberDAO instance = new MemberDAO();
	static public MemberDAO getInstance() {
		return instance;
	}
	
	void setDummy() {
		list.add(new MemberVO("admin","admin","관리자","남성"));
		list.add(new MemberVO("qwer","1111","이만수","남성"));
		list.add(new MemberVO("abcd","2222","박영희","여성"));
		list.add(new MemberVO("hello","3333","이수민","여성"));
	}
	
	//아이디 존재 여부확인
	public boolean isID(String id) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getId().equals(id)) {
				return true;
			}
		}
		return false;
	}
	
	//아이디 인덱스번호 찾기
	public int checkId(String id) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getId().equals(id)) {
				return i;
			}
		}
		return -1;
	}
	
	//아이디와 비밀번호 일치 여부 확인
	public boolean checkPw(String pw, int idIdx) {
		if(idIdx!=-1) {
			for(int i=0; i<list.size(); i++) {
				if(list.get(i).getPw().equals(pw) && i==idIdx) {
					return true;
				}
			}
		}
		return false;
	}
	
	//멤버 목록 생성
	public String[][] memberList() {
		String[][] member=new String[list.size()][4];
		for(int i=0; i<list.size(); i++) {
			member[i][0]=list.get(i).getId();
			member[i][1]=list.get(i).getPw();
			member[i][2]=list.get(i).getName();
			member[i][3]=list.get(i).getGender();
		}
		return member;
	}
	
	//멤버 삭제
	public void delMember(int idx) {
		list.remove(idx);
	}
	
	//멤버 생성
	public void addMember(String id, String pw, String name,String gender) {
		list.add(new MemberVO(id,pw,name,gender));
	}
	
	//특정 멤버 데이터 전달
	public String[] memberData(int idx) {
		String[] memberOne=new String[4];
		memberOne[0]=list.get(idx).getId();
		memberOne[1]=list.get(idx).getPw();
		memberOne[2]=list.get(idx).getName();
		memberOne[3]=list.get(idx).getGender();
		return memberOne;
	}
	
	//멤버 수정
	public void updateMember(int idx, String id, String pw, String name,String gender) {
		MemberVO newMem=new MemberVO(id,pw,name,gender);
		list.set(idx, newMem);
	}
}