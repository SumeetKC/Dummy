package dummy.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dummy.service.UserService;
import dummy.user.User;
import dummy.userDAO.UserDao;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Transactional
	public void userRegister(User user) {
		// TODO Auto-generated method stub
		userDao.userRegister(user);

	}

	@Override
	public User userUpdate(String id) {
		// TODO Auto-generated method stub
		User user = userDao.userUpdate(id);
		return user;

	}

	@Override
	public void userDelete(String id) {
		// TODO Auto-generated method stub
		userDao.userDelete(id);

	}

	@Override
	public User getUser(String id) {
		// TODO Auto-generated method stub
		User user = userDao.getUser(id);
		return user;
	}

	@Override
	public List<User> userList() {
		// TODO Auto-generated method stub
		List<User> list= userDao.userList();
		return list;
	}

}
