package dummy.service;

import java.util.List;

import dummy.user.User;

public interface UserService {
	public void userRegister(User user);

	public User userUpdate(String id);

	public void userDelete(String id);

	public List<User> userList();

	public User getUser(String id);

}
