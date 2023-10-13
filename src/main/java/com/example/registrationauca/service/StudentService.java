package com.example.registrationauca.service;

import com.example.registrationauca.dao.StudentDAO;
import com.example.registrationauca.model.Student;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class StudentService extends UnicastRemoteObject implements StudentServiceInterface {
    StudentDAO studentDao = new StudentDAO();
    public StudentService() throws RemoteException {
        super();
    }
    public void saveStudent(Student student) throws RemoteException {
        studentDao.createStudent(student);
    }
}
