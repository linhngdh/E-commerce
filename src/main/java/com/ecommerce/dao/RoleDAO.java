package com.ecommerce.dao;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ecommerce.entity.*;
public interface RoleDAO extends JpaRepository<Role, String>{
    
}
