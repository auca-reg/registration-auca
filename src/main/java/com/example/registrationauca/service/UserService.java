package com.example.registrationauca.service;

import com.example.registrationauca.dao.HibernateUtil;
import com.example.registrationauca.dao.UserDAO;
import com.example.registrationauca.model.User;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class UserService extends UnicastRemoteObject implements UserServiceInterface {
    UserDAO userDAO = new UserDAO();

    public UserService() throws RemoteException {
    }

    public void saveUser(User user) throws RemoteException {
        userDAO.createUser(user);
    }
    public String getPasswordByEmail(String email) throws RemoteException {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<User> query = builder.createQuery(User.class);
            Root<User> root = query.from(User.class);

            // Adding the where clause to retrieve user with the specified email
            query.where(builder.equal(root.get("email"), email));

            Query<User> q = session.createQuery(query);
            User user = q.uniqueResult();

            // Returning the password if user is found, otherwise return null
            return (user != null) ? user.getPassword() : null;
        } catch (HibernateException e) {
            throw new RemoteException("Error retrieving password", e);
        }
    }
}
