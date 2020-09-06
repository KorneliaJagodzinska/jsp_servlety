package webappdemo.model;

import lombok.*;
import org.hibernate.annotations.Formula;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Set;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName;
    private String lastName;
    private LocalDate birthDate;
    @Formula("(year(now())-year(birthDate))")
    private int age;
    private boolean special;
    private double ects;
    @OneToMany(mappedBy = "student")
    @EqualsAndHashCode.Exclude
    private Set<Grade> grades;



}
