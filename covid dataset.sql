use covid;

select location,sum(dead),sum(infected),(sum(dead)/sum(infected)*100) as dead_infected_likelyhood from covid
group by location
order by location;

select location,sum(dead),sum(vaccinated),(sum(dead)/sum(vaccinated)*100) as dead_vaccinated_likelyhood from covid
group by location
order by dead_vaccinated_likelyhood;

select location,sum(infected),sum(vaccinated),(sum(infected)/sum(vaccinated)*100) as infected_vaccinated_likelyhood from covid
group by location
order by infected_vaccinated_likelyhood;

select location,population,sum(dead),(sum(dead)/population*100) as highest_death_rate from covid
group by location,population
order by location,population;
