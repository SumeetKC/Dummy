package dummy.userDAOimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import dummy.user.User;
import dummy.userDAO.UserDao;

@SuppressWarnings("unchecked")
@Repository
public class UserDaoImpl implements UserDao {

	Configuration cfg = new Configuration().configure("User.cfg.xml");
	SessionFactory factory = cfg.buildSessionFactory();

	@Override
	public void userRegister(User user) {
		// TODO Auto-generated method stub

		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(user);
		transaction.commit();
		session.close();
		System.out.println("Data saved");

	}

	@Override
	public User userUpdate(String id) {
		// TODO Auto-generated method stub
		System.out.println("1");
		Session session = factory.openSession();
		System.out.println("2");
		Transaction transaction = session.beginTransaction();
		System.out.println("3");
		Object object = session.load(User.class, id);
		System.out.println("4");
		User user = (User) object;
		transaction.commit();
		System.out.println("6");
		// session1.close();
		System.out.println("7");
		return user;

	}

	@Override
	public void userDelete(String id) {
		// TODO Auto-generated method stub
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			User user = (User) session.load(User.class, id);
			session.delete(user);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		transaction.commit();
		session.close();
		System.out.println("Data deleted");

	}

	@Override
	public User getUser(String id) {
		// TODO Auto-generated method stub
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		User user = null;
		try {
			user = (User) session.load(User.class, id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		transaction.commit();
		return user;
	}

	@Override
	public List<User> userList() {
		// TODO Auto-generated method stub
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		List<User> list=session.createQuery("from User").getResultList();
		transaction.commit();
		return list;
	}

}
