mrnaNorm <- read.table("D:/M Tech/Cource/sem 2/coursera/week3/BRCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", 
                       header = T, fill = T, skip = 2)
class(mrnaNorm)
dim(mrnaNorm)
mrnaIDs <- read.table("D:/M Tech/Cource/sem 2/coursera/week3/BRCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", header =T, fill = T)
class(mrnaIDs)
dim(mrnaIDs)
mrnaIDs <- mrnaIDs[, -1] # remove the first solumn "Hybridization REF" which spans dim(mrnaIDs)

mrnaIDs[1,20]
mrnaNorm[20,1]
