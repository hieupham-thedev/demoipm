package com.phuongnt.service;

import java.util.List;

import com.phuongnt.dto.CandidateDto;

public interface CandidateService {

	void create(CandidateDto candidateDto);
	
	CandidateDto readById(int id) throws Exception;
	
	List<CandidateDto> readAll() throws Exception ;
	
	void update(CandidateDto candidateDto);
	
	void deleteById(int id);
}
