package project.admin.e_p001.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import project.admin.e_p001.vo.E_p001VO;

public interface E_p001DAO {

	public int addUser(E_p001VO e_p001VO) throws Exception;

	public List selectUser(Map<String, String> search)throws Exception;

	public int deleteUser(String userId)throws Exception;

	public List selectUpdateUserList(String userId)throws Exception;

	public int upDaet(E_p001VO e_p001VO)throws Exception;

	
}