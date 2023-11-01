/* Para duas tabelas de alunos e Notas:

  Gerar um relatório contendo três colunas: Nome , Nota e Marca . Ketty não quer os NOMES dos alunos que obtiveram nota inferior a 8 . 
O relatório deve estar em ordem decrescente por nota – ou seja, as notas mais altas são inseridas primeiro. Se houver mais de um aluno 
com a mesma nota (8-10) atribuída a eles, ordene esses alunos em particular pelo nome em ordem alfabética. Por fim, se a nota for inferior 
a 8, use “NULL” como nome e liste-os por notas em ordem decrescente. Se houver mais de um aluno com a mesma nota (1-7) atribuída a eles, 
ordene esses alunos pelas notas em ordem crescente.

Name     Grade      Marks  

Ordem descrescente por Grade
Ordem crescente name
Ordem crescente por Marks

Informações completas para quem estiver acima de grade 8
Name is Null abaixo de Grade 8 


__Exercicio Hackerank__
*/

select case
        when g.grade >=8 then name
        else null
        end as name, 
        g.grade as corresp, 
        marks
from Students
join grades g
on marks between g.min_mark and g. max_mark
order by corresp desc, name, marks
