$ cut -f 2-4 -d , PredPreyData.csv > PredPreyCut.csv | grep time PredPreyCut.csv > Last10PredPreyData.csv | tail PredPreyCut.csv >> Last10PredPreyData.csv
