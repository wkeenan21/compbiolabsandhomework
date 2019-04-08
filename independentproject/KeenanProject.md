# Effects of Rainbow  and Westslope Cutthroat Trout Hybridization on Metabolism
## Introduction
This project aims to use data from a study titled:"Metabolic traits of westslope cutthroat trout, introduced rainbow trout and their hybrids in an ecotonal hybrid zone along an elevation gradient." While the goal of this study was an exploration of the metabolic traits of native, invasive, and hybrid trout, I would like to use the data to conduct a novel analysis on the relationship between fish genotype, elevation and fish mass.
The driving question for this project is: "Is the relationship between mass, elevation, and genotype strong enough to allow mass and elevation to be used for quicker, easier identification of hybrid fish in the field." As stated in the study, the identification of hybrids in comparison to non-hybrids in rivers that are affected by hybridization is exceptionally difficult. Because mass and elevation are easily acquired attributes of fish caught in the field compared to other, time-consuming measurements, it may be possible to use these traits to speed up fish identification by researchers and recreational fishers.

## Summary of data to be analyzed

This project utilizes data from a 2011 study in the Upper Oldman River of Alberta, Canada. From the 1920s to the 1970s, The Upper Oldman River was stocked with non-native, hatchery rainbow trout. Since then, rainbow trout have been very successful in competing with the native westslope cutthroat trout which was the historically dominant fish in the watershed. These two species of fish produce hybrids with relatively high fertility, allowing hybrid fish to have a large abundance and effect on the ecology of the streams. Today, the RT (rainbow trout) dominates the lower elevation streams, while the WCT (Westslope cutthroat trout) is more prevalent in the higher elevation streams. Hybrid fish, as one would guess, occupy the mid elevation range at great abundance. The researchers hypothesized that metabolic differences would follow the genotype gradient seen in elevation. These statistics were collected on 1235 fish specimens: genotype, weight, elevation, oxygen consumption and abundance of three metabolic enzymes. 
### Brief description of the methodology that produced the data
The study area consisted of 10 streams and 23 sampling sites. From July-August in 2005 and 2006, 60 fish were collected at each site using backpack electrofishing. Weight and elevation of collection location were measured on each fish. Genetic analysis was done on fin clips to verify genotype. A random sample of 92 fish had their oxygen consumption tested on site using a Erlenmeyer flask of stream water and an oxygen electrode. Ten fish from each site were killed, dissected and tested for metabolic enzyme levels in the lab.
### Type of data in this data set:
#### Format of data
The data was downloaded in an excel spreadsheet
#### Size of Data
The excel sheet is 354 lines with 13 columns. It is 69 KB.
#### Inconsistencies/Potential Problems
The data include columns for every piece of data collected, although most fish were not sampled for every statistic. There are many "no data" holes. The fish ID column includes a site ID followed by a number, instead of having two seperate columns- one for ID and one for site. This will likely need to be changed in order to statistically analyse the data as a whole.
## Detailed Description of Analysis to be Done and Challenges Involved
1. Data converted into a csv and uploaded into Rstudio.
2. Fish ID problem addressed and fixed so that statistical analysis can be performed.
3. Preliminary analysis of data: plots and summaries for weight, elevation, and oxygen consumption for each genotype created and as a whole created.
4. Linear regressions created for elevation and weight by genotype.
5. Key statistics analyzed: p-values, coefficients, and standard deviations.
6. Conclusions reached regarded the usefulness of weight and elevation as measurements for quicker fish identification in the field
## References
Rasmussen JB, Robinson MD, Hontela A, Heath DD (2011) Metabolic traits of westslope cutthroat, introduced rainbow trout and their hybrids in an ecotonal hybrid zone along an elevation gradient. Biological Journal of the Linnean Society 105(1): 56-72. [https://doi.org/10.1111/j.1095-8312.2011.01768.x](https://doi.org/10.1111/j.1095-8312.2011.01768.x)
[https://academic.oup.com/biolinnean/article/105/1/56/2452490](https://academic.oup.com/biolinnean/article/105/1/56/2452490)

Rasmussen JB, Robinson MD, Hontela A, Heath DD (2011) Data from: Metabolic traits of westslope cutthroat, introduced rainbow trout and their hybrids in an ecotonal hybrid zone along an elevation gradient. Dryad Digital Repository. [https://doi.org/10.5061/dryad.rr388](https://doi.org/10.5061/dryad.rr388)
