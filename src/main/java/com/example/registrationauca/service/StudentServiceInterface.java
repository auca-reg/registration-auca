package com.example.registrationauca.service;

import com.example.registrationauca.model.Student;

import java.rmi.Remote;
import java.rmi.RemoteException;

public interface StudentServiceInterface extends Remote {
    public void saveStudent(Student student) throws RemoteException;
}
