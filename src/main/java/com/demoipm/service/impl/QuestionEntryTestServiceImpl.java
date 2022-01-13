package com.demoipm.service.impl;

import com.demoipm.dao.QuestionDao;
import com.demoipm.dao.SkillDao;
import com.demoipm.dto.EntryTestRequest;
import com.demoipm.dto.QuestionEntryTestRequest;
import com.demoipm.entities.EntryTest;
import com.demoipm.entities.QuestionEntryTest;
import com.demoipm.entities.Skill;
import com.demoipm.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
@Transactional
public class QuestionEntryTestServiceImpl implements QuestionService{

    @Autowired
    private QuestionDao questionDao;

    @Autowired
    private SkillDao skillDao;

    @Override
    public QuestionEntryTest create(QuestionEntryTestRequest questionEntryTestRequest) {
        QuestionEntryTest questionEntryTest = parseEntryQuestionTestRequestToEntities(questionEntryTestRequest);
        Skill skill = getSkillByName(questionEntryTestRequest.getSkill());
        questionEntryTest.setSkill(skill);
        return questionDao.save(questionEntryTest);
    }

    @Override
    public QuestionEntryTest update(QuestionEntryTestRequest questionEntryTestRequest) {
        QuestionEntryTest questionEntryTest = parseEntryQuestionTestRequestToEntities(questionEntryTestRequest);
        return questionDao.save(questionEntryTest);
    }

    private Skill getSkillByName(String name){
        Skill skill = skillDao.findByName(name).orElse(null);
        return skill;
    }


    private QuestionEntryTest parseEntryQuestionTestRequestToEntities(QuestionEntryTestRequest questionEntryTestRequest){
        QuestionEntryTest questionEntryTest = new QuestionEntryTest();
        questionEntryTest.setAnswer1(questionEntryTestRequest.getAnswer1());
        questionEntryTest.setAnswer2(questionEntryTestRequest.getAnswer2());
        questionEntryTest.setAnswer3(questionEntryTestRequest.getAnswer3());
        questionEntryTest.setAnswer4(questionEntryTestRequest.getAnswer4());
        questionEntryTest.setContent(questionEntryTestRequest.getContent());
        questionEntryTest.setOption1(questionEntryTestRequest.getOption1());
        questionEntryTest.setOption2(questionEntryTestRequest.getOption2());
        questionEntryTest.setOption3(questionEntryTestRequest.getOption3());
        questionEntryTest.setOption4(questionEntryTestRequest.getOption4());
        return questionEntryTest;
    }

    @Override
    public void deleteById(int id) {
        if (questionDao.existsById(id)) {
            questionDao.deleteById(id);
        }

    }
}
