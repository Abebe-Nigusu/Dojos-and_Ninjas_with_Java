package com.abebe.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.abebe.dojosandninjas.models.Ninja;
import com.abebe.dojosandninjas.models.Dojo;
import com.abebe.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {

private final DojoRepository dojoRepo;
	
	public DojoService(DojoRepository dojoRepo) {
		this.dojoRepo = dojoRepo;
	}
	
	public Dojo getOne(Long id) {
		Optional<Dojo> dojo = dojoRepo.findById(id);
		return dojo.isPresent() ? dojo.get() : null;
	}

	public List<Dojo> getAll() {
		return (List<Dojo>) dojoRepo.findAll();
	}

	public Dojo create(Dojo dojo) {
		return dojoRepo.save(dojo);
	}

	public Dojo update(Dojo dojo) {
		return dojoRepo.save(dojo);
	}

	public void delete(Long id) {
		dojoRepo.deleteById(id);
	}


}
