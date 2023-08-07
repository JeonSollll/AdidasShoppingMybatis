package com.kh.notice.model.dao;

import java.sql.*;
import java.util.*;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.notice.model.vo.Notice;

public class NoticeDAO {



	public int insertNotice(SqlSession session, Notice notice) {
		int result = session.insert("NoticeMapper.insertNotice", notice);
		return result;
	}

	public int updateNotice(SqlSession session, Notice notice) {
		int result = session.update("NoticeMapper.updateNotice", notice);
		return result;
	}

	public int deleteNoticebyNo(SqlSession session, int noticeNo) {
		int result = session.delete("NoticeMapper.deleteNoticebyNo", noticeNo);
		return result;
	}

	public List<Notice> selectNoticeList(SqlSession session, int currentPage) {
		// JDBC와 다르게 1줄이면 코드 끝
		// select를 할거면 session에서 selectList, selectOne 메소드 중에서 필요에 맞게 호출!
		// mapper.xml의 name값(NoticeMapper)과 쿼리문의 id값(selectNoticeList)을 호출!
		// 넘겨주는 값(매개변수)은 없으므로 name.id값만 selectList() 메소드의 전달값으로 넘겨줌
		// select이기 때문에 mapper.xml에서는 restToNotice에 해당하는 ResultMap을 작성해줘야함!!
		
		/*
		 * RowBounds는 왜 쓰나요? 쿼리문을 변경하지 않고도 페이징을 처리할 수 있게 해주는 클래스!
		 * RowBounds의 동작은 offset값과 limit값을 이용해서 동작함.
		 * limit값은 한 페이지당 보여주고 싶은 게시물의 개수
		 * offset값은 시작값
		 * 1 페이지에서는 0부터 시작해서 10개를 가져오고	1  ~ 10
		 * 2 페이지에서는 10부터 시작해서 ...				11 ~ 20
		 * 3 페이지에서는 20부터 시작해서 ...				21 ~ 30
		 */
		int limit = 10;
		int offset = (currentPage-1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Notice> nList = session.selectList("NoticeMapper.selectNoticeList", null, rowBounds);
		return nList;
	}

	public Notice selectOneByNo(SqlSession session, int noticeNo) {
		Notice notice = session.selectOne("NoticeMapper.selectOneByNo", noticeNo);
		return notice;
	}

//	private Notice rsetToNotice(ResultSet rset) throws SQLException {
//		Notice notice = new Notice();
//		notice.setNoticeNo(rset.getInt("NOTICE_NO"));
//		notice.setNoticeSubject(rset.getString("NOTICE_SUBJECT"));
//		notice.setNoticeContent(rset.getString("NOTICE_CONTENT"));
//		notice.setNoticeWriter(rset.getString("NOTICE_WRITER"));
//		notice.setNoticeDate(rset.getTimestamp("NOTICE_DATE"));
//		notice.setUpdateDate(rset.getTimestamp("UPDATE_DATE"));
//		notice.setViewCount(rset.getInt("VIEW_COUNT"));
//		return notice;
//	}
	
	public String generatePageNavi(SqlSession session, int currentPage) {
		int totalCount = getTotalCount(session);
		int recordCountPage = 10;
		int naviTotalCount = (int) Math.ceil((double) totalCount / recordCountPage);
		int naviCountPage = 10;
		int startNavi = ((currentPage - 1)/naviCountPage) * naviCountPage + 1;
		int endNavi = startNavi + naviCountPage - 1;
		// endNavi값이 총 범위의 개수보다 커지는 것을 막아주는 코드
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi == 1) {
			needPrev = false;
		}
		if(endNavi == naviTotalCount) {
			needNext = false;
		}
		StringBuilder result = new StringBuilder();
		if(needPrev) result.append("<a href='/notice/list.do?currentPage=" + (startNavi-1) + "''>[이전]</a>");
		for(int i = startNavi; i <= endNavi; i++) {
			result.append("<a href='/notice/list.do?currentPage=" + i + "'>" + i + "</a>&nbsp;&nbsp;");
		}
		if(needNext) result.append("<a href='/notice/list.do?currentPage=" + (endNavi+1) + "''>[다음]</a>");
		return result.toString();
	}

	private int getTotalCount(SqlSession session) {
		int totalCount = session.selectOne("NoticeMapper.getTotalCount");
		return totalCount;
	}
}
