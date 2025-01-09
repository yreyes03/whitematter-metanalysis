# whitematter-metanalysis

In this project we use meta-analysis to associate functional properties of the brain cortex defined across thousands of neuroimaging studies to over 40 major white matter tracts. This repository contains the code for the analysis.
Neuroimaging data was obtained from the Humman Connectome Project and contains 162 subjects. Functional data was obtained from neurosynth and neuroquery meta-analysis tools. 
https://neurosynth.org
https://neuroquery.org

## discrete_decoder.ipynb
This file has the code that analysis the neuroimaging data in volume space. The data consists of density plots of over 40 major white matter tracts. Data is plotted onto the brain cortex. This tool uses neurosynth to map the function onto each of these tracts. This code creates files containing white matter tracts, functional terms, and their corresponding z scores between term and tract. Also creates dendrogram and heatmaps that shows how functionally similar these tracts are. Can also creates brain plots, word clouds, and radar plots showing the top related functions of each tract.


## surf2vol.ipynb
This file converts surface data into volume data for input into discrete decoder. Uses workbench.
https://www.humanconnectome.org/software/connectome-workbench

## LDA_decoder.ipynb
Contains code that uses Latent Dirichlet Allocation to assign functions to the white matter tracts using the neuroquery meta-analysis tool. Uses the same data as discrete decoder but in surface space instead. Creates dataframe with white matter tracts, functional topics, and corresponding correlation between topic and tract. Also creates dendrogram and heatmaps that shows how functionally similar these tracts are. Can also creates surface plots, word clouds, and radar plots showing the top related functions of each tract.
