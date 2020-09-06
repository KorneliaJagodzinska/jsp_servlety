package webappdemo.model;

import lombok.*;

import javax.persistence.*;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Grade {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private double value;
    @Enumerated(value = EnumType.STRING)
    private GradeSubject subject;
    @ManyToOne
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    private Student student;

}
