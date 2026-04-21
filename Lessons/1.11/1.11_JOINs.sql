SELECT
    job_id,
    job_title_short,
    name AS company_name,
    job_location
FROM
    job_postings_fact AS jpf
left outer JOIN company_dim AS cd
    on jpf.company_id = cd.company_id;

select *
from skills_job_dim
limit 10;

select *
from skills_dim
limit 10;

select
    jpf.job_id,
    jpf.job_title_short,
    sjd.skill_id,
    sd.skills
FROM job_postings_fact AS jpf
LEFT JOIN skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
LEFT JOIN skills_dim AS sd
    ON sjd.skill_id = sd.skill_id;

select
    jpf.job_id,
    jpf.job_title_short,
    sjd.skill_id,
    sd.skills
FROM job_postings_fact AS jpf
inner JOIN skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
inner JOIN skills_dim AS sd
    ON sjd.skill_id = sd.skill_id;