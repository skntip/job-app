package com.prayash.springbootweb1;
import jdk.jfr.DataAmount;
import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.List;


@Data
@Component
public class Kam {
    private String jobName;
    private String  jobDescription;
    private List<String> jobType;


}







