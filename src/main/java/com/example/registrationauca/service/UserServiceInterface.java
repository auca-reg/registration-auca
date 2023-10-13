package com.example.registrationauca.service;

import com.example.registrationauca.model.User;

import java.rmi.Remote;
import java.rmi.RemoteException;

public interface UserServiceInterface extends Remote  {
    public void saveUser(User user) throws RemoteException;
    public String getPasswordByEmail(String email) throws RemoteException;
}
