# This line loads data from a tab-delimited file. Change the route to the file
# accordingly when copying the base file.

ochnaceae <- read.delim(
  "/home/balleng/Área de trabalho/ColombianOchnaceae.tab", 
  header=T)

# Subset data for each genus

Rhytidanthera <- ochnaceae[ which(ochnaceae$Género == "Rhytidanthera"), ]
Godoya <- ochnaceae[ which(ochnaceae$Género == "Godoya"), ]
Krukoviella <- ochnaceae[ which(ochnaceae$Género == "Krukoviella"), ]
Cespedesia <- ochnaceae[ which(ochnaceae$Género == "Cespedezia" | 
                                 ochnaceae$Género == "Cespedesia"), ]


# Departments and any other kind of data summary, for instance:

factor(Rhytidanthera$Departamento..interpretado.)
