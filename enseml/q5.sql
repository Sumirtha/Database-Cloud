select distinct biotype from gene;
select distinct biotype from transcript;

#to count
select count(distinct biotype) from gene;
select count(distinct biotype) from transcript;