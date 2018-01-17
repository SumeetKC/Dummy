package dummy.userDAO;

import java.util.List;

import dummy.user.User;

public interface UserDao {

	public void userRegister(User user);

	public User userUpdate(String id);

	public void userDelete(String id);

	public User getUser(String id);

	public List<User> userList();

}
