package com.phuongnt.dto;

import java.util.ArrayList;
import java.util.List;

import com.phuongnt.entities.Career;
import com.phuongnt.entities.Job;
import com.phuongnt.entities.Recruitment;

public class CareerDto {

	private int id;
	
	private String name;
	
	private String description;
	
	private List<JobDto> listJobDto = new ArrayList<JobDto>();
	
	private List<RecruitmentDto> listRecruitmentDto = new ArrayList<RecruitmentDto>();
	
	public CareerDto() {}
	
	public CareerDto(Career career) {
		super();
		this.id = career.getId();
		this.name = career.getName();
		this.description = career.getDescription();
		
		List<Job> listJob = career.getListJob();
		for (Job job : listJob) {
			JobDto jobDto = new JobDto(job);
			this.listJobDto.add(jobDto);
		}
		
		List<Recruitment> listRecruitment = career.getListRecruitment();
		for (Recruitment recruitment : listRecruitment) {
			RecruitmentDto recruitmentDto = new RecruitmentDto(recruitment);
			this.listRecruitmentDto.add(recruitmentDto);
		}
	}

	public List<RecruitmentDto> getListRecruitmentDto() {
		return listRecruitmentDto;
	}

	public void setListRecruitmentDto(List<RecruitmentDto> listRecruitmentDto) {
		this.listRecruitmentDto = listRecruitmentDto;
	}

	public void addCareer(JobDto job) {
		listJobDto.add(job);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<JobDto> getListJobDto() {
		return listJobDto;
	}

	public void setListJobDto(List<JobDto> listJob) {
		this.listJobDto = listJob;
	}
	
}
