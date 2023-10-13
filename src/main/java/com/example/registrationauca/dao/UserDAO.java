package com.example.registrationauca.dao;

import com.example.registrationauca.model.User;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserDAO {
    public boolean createUser(User user) {
        boolean result = false;
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(user);
        tx.commit();
        session.close();
        result = Boolean.TRUE;
        return result;
    }

    public User findUser(String email) {
        // Use a try-with-resources statement to automatically close the session
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // Create CriteriaBuilder
            CriteriaBuilder builder = session.getCriteriaBuilder();

            // Create CriteriaQuery
            CriteriaQuery<User> query = builder.createQuery(User.class);

            // Specify the root object
            Root<User> root = query.from(User.class);

            // Add the where condition
            query.select(root).where(builder.equal(root.get("email"), email));

            // Execute the query and get the result
            return session.createQuery(query).uniqueResult();
        } catch (HibernateException ex) {
            ex.printStackTrace(); // Log the exception message for debugging
            return null;
        }
    }
}
