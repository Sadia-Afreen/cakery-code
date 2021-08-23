package com.bro.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.bro.ecommerce.entity.Seller;

@CrossOrigin("http://localhost:4200")
public interface SellerRepository extends JpaRepository<Seller, Long> {

}
