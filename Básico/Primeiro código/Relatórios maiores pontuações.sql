/* Neste exercicio foi solicitado um relatorio dos participantes que tiveram nota maxima nos desafios, onde eu tive que realizar join entre 
4 tabelas para verificar o níve de dificuldade do desafio, o nome do hacker e qual era a pontuação maxima do desafio realizado. Caso ele
tenha feito a pontuação maxima, coloquei em ordem descrescente pela quantidade de desafios realizados e com nota maxima pelo hacker, caso
tivesse outro participante com os mesmos numeros classifiquei em ordem crescente pelo ID, na que o menor é o mais recente identificado.

Exercicio do HackerRank (Intermed)
*/

select id, name
from (select s.hacker_id as "id",
        h.name as "name",
        s.challenge_id,
        c.difficulty_level
from submissions s
inner join challenges c
inner join Difficulty d
inner join Hackers h
on s.challenge_id = c.challenge_id and c.difficulty_level = d.difficulty_level and s.Hacker_id =h.Hacker_id 
where s.score = d.score) as T_total
group by id, name
having count(id)> 1
order by count(id) desc, id;
