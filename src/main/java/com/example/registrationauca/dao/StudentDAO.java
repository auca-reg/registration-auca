package com.example.registrationauca.dao;

import com.example.registrationauca.model.Student;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class StudentDAO {
    public boolean createStudent(Student student) {
        boolean result = false;
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(student);
        tx.commit();
        session.close();
        result = Boolean.TRUE;
        return result;
    }
}
