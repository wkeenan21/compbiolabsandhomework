# Using Elevation and Weight Data to Predict Trout Genotype

## Biological question

The driving question for this project is: "Is the relationship between mass, elevation, and genotype strong enough to allow mass and elevation to be used for quicker, easier identification of hybrid fish in the field." In many rivers affected by hybridization the identification of hybrids in comparison to non-hybrids is exceptionally difficult. Because mass and elevation are easily acquired attributes of fish caught in the field compared to other, time-consuming measurements, it may be possible to use these traits to speed up fish identification by researchers and recreational fishers.
## Context (introduction)

This should help a naive reader make sense of what to expect and why it is interesting. It should make sense even before the reader reads the Methods.


Methods

##### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#the-source-of-the-data)The source of the data:
This project utilizes data from a 2011 study in the Upper Oldman River of Alberta, Canada. From the 1920s to the 1970s, The Upper Oldman River was stocked with non-native, hatchery rainbow trout. Since then, rainbow trout have been very successful in competing with the native westslope cutthroat trout which was the historically dominant fish in the watershed. These two species of fish produce hybrids with relatively high fertility, allowing hybrid fish to have a large abundance and effect on the ecology of the streams. Today, the RT (rainbow trout) dominates the lower elevation streams, while the WCT (Westslope cutthroat trout) is more prevalent in the higher elevation streams. Hybrid fish, as one would guess, occupy the mid elevation range at great abundance. The researchers hypothesized that metabolic differences would follow the genotype gradient seen in elevation. These statistics were collected on 1235 fish specimens: genotype, weight, elevation, oxygen consumption and abundance of three metabolic enzymes.

The study area consisted of 10 streams and 23 sampling sites. From July-August in 2005 and 2006, 60 fish were collected at each site using backpack electrofishing. Weight and elevation of collection location were measured on each fish. Genetic analysis was done on fin clips to verify genotype. A random sample of 92 fish had their oxygen consumption tested on site using a Erlenmeyer flask of stream water and an oxygen electrode. Ten fish from each site were killed, dissected and tested for metabolic enzyme levels in the lab.

Rasmussen JB, Robinson MD, Hontela A, Heath DD (2011) Metabolic traits of westslope cutthroat, introduced rainbow trout and their hybrids in an ecotonal hybrid zone along an elevation gradient. Biological Journal of the Linnean Society 105(1): 56-72.  [https://doi.org/10.1111/j.1095-8312.2011.01768.x](https://doi.org/10.1111/j.1095-8312.2011.01768.x)[https://academic.oup.com/biolinnean/article/105/1/56/2452490](https://academic.oup.com/biolinnean/article/105/1/56/2452490)

Rasmussen JB, Robinson MD, Hontela A, Heath DD (2011) Data from: Metabolic traits of westslope cutthroat, introduced rainbow trout and their hybrids in an ecotonal hybrid zone along an elevation gradient. Dryad Digital Repository.  [https://doi.org/10.5061/dryad.rr388](https://doi.org/10.5061/dryad.rr388)


##### What the original authors did with the data:

As stated earlier, the authors hypothesized that the gradient in elevation seen between the RT, WCT, and its hybrids would be mirrored by a gradient in metabolic traits. To test this hypothesis, they used linear regressions with with elevation as the independent variable and the various metabolic traits such as oxygen for the dependent variables. All of their regressions showed varying degrees of significance with the elevation gradient. 

##### [](https://github.com/flaxmans/CompBio_on_git/blob/master/Assignments/09_Independent_Project_Step2.md#what-you-did-with-the-data-and-how-you-did-it)What  _YOU_  did with the data and how you did it:

Although I used the same data as the original authors, my study focused on finding out whether or not weight and elevation could be used to accurately predict the genotype of a fish. I did not use the metabolic trait data the authors collected. The goal of my study was to see if elevation and weight data could aid recreational fishers or fish biologists in identifying hybrid fish when encountered in the field.

Firstly, I familiarized myself with the data and explored the summary statistics of the weights of each genotype. I immediately noticed that the mean weight of the hybrid genotype was higher than both WCT and RT, unlike I had suspected. I decided that because the genes of two species of fish and their hybrid generally follows a gradient, I could use an ordinal linear regression to predict genotype. An ordinal linear regression includes a categorical dependent variable which follows some sort of natural order. In my study, I am predicting that the traits of the three genotypes of trout follow an order of most like Rainbow trout (or WCT) to least like Rainbow trout (or WCT).

To do this, I needed to make sure the genotype column of data is of type factor. Fortunately, it already was. However, I had to change the order of the factor from HYB, RT, WCT to RT, HYB, WCT. The former would have told the model to predict RT and WCT to be more similar to each other than HYB was to WCT.

I ran three models: one with weight, one with elevation, and one with both as the independent variables. I tested the elevation model using the predict function in R and compared the results with the original data.

I decided to test the difference between the accuracy of the ordinal regression with a multinomial regression. A multinomial regression includes categorical dependent variables but does not assume an order.

Finally, I decided to see how a model that used weight instead of elevation as the independent variable performed.

### Results and conclusions

The ordinal regression model which used elevation as the independent variable was 77% accurate. It was very accurate on either end of the elevation data, predicting almost all of the Rainbow trouts correctly and only making one error at the high elevation WCT data. It struggled at mid-elevations where WCT and hybrids both existed. 

Interestingly, the multinomial model with elevation as an independent variable performed exactly the same as the ordinal model. This indicates that adding a directionality to the model did not improve the likelihood of predicting the fish correctly. The model also performed poorly in the same areas that the ordinal model did.


![Plot showing the how where the model performed correctly](%22http://tinypic.com?ref=2ah760j%22%20target=%22_blank%22%3E%3Cimg%20src=%22http://i67.tinypic.com/2ah760j.png%22%20border=%220%22%20alt=%22Image%20and%20video%20hosting%20by%20TinyPic%22%3E%3C/a%3E)


The model which included weight as the independent variable was accurate 19% of the time. This is worse than totally random (33%). This indicates that, at least with this data set, weight is useless as a predictor of genotype.

Our results indicate that for the recreational fisher or scientist, elevation data could certainly be of use when trying to discrimenate between a rainbow trout and a western cutthroat trout.
