package com.prayash.springbootweb1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    private List<Kam> kamList = new ArrayList<>();

    @RequestMapping("/")
    public String home() {
        System.out.println("home method called");
        return "index";
    }

    @GetMapping("/add-job")
    public String addJob() {
        return "job";
    }

    @PostMapping("/add-job")
    public String saveJob(
            @RequestParam("jobName") String jobName,
            @RequestParam("jobDescription") String jobDescription,
            @RequestParam("jobType") List<String> jobType
    ) {

        Kam newJob = new Kam();
        newJob.setJobName(jobName);
        newJob.setJobDescription(jobDescription);
        newJob.setJobType(jobType);


        kamList.add(newJob);


        return "redirect:/view-jobs";
    }

    @GetMapping("/view-jobs")
    public String viewJobs(Model model) {
        model.addAttribute("kamList", kamList);
        return "see";
    }
}



