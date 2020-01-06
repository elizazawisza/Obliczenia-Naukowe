#Eliza Zawisza
#244967

include("blocksys.jl")



# (A,n,l) = Blocksys.loadMatrixFromFile("Dane16_1_1/A.txt")
# b = Blocksys.loadRightSideVectorFromFile("Dane16_1_1/b.txt")


# choiceGauss16 = Blocksys.calculateGaussWithChoice(A, n, l, b)
# @time Blocksys.calculateGaussWithChoice(A, n, l, b)
# n = length(choiceGauss16)
#
# Blocksys.exportSolutionToFile("wynikiGAUSS_choice16.txt", choiceGauss16, n)


# gauss16 = Blocksys.calculateGaussElimination(A, n, l, b)
# @time Blocksys.calculateGaussElimination(A, n, l, b)
# n = length(gauss16)
#
# Blocksys.exportSolutionToFile("wynikiGAUSS_16.txt", gauss16, n)
#

# lu16 = Blocksys.calculateLU(A, n, l, b)
# @time Blocksys.calculateLU(A, n, l, b)
# n = length(lu16)
#
# Blocksys.exportSolutionToFile("wynikiLU_16.txt", lu16, n)
#
# choiceLU16 = Blocksys.calculateLUWithChoice(A, n, l, b)
# @time Blocksys.calculateLUWithChoice(A, n, l, b)
# n = length(choiceLU16)
#
# Blocksys.exportSolutionToFile("wynikiLU_choice16.txt", choiceLU16, n)

# (A,n,l) = Blocksys.loadMatrixFromFile("Dane10000_1_1/A.txt")
# b = Blocksys.loadRightSideVectorFromFile("Dane10000_1_1/b.txt")


# choiceGauss10000 = Blocksys.calculateGaussWithChoice(A, n, l, b)
# @time Blocksys.calculateGaussWithChoice(A, n, l, b)
# n = length(choiceGauss10000)
#
# Blocksys.exportSolutionToFile("wynikiGAUSS_choice10000.txt", choiceGauss10000, n)
#

# gauss10000 = Blocksys.calculateGaussElimination(A, n, l, b)
# @time Blocksys.calculateGaussElimination(A, n, l, b)
# n = length(gauss10000)
#
# Blocksys.exportSolutionToFile("wynikiGAUSS_10000.txt", gauss10000, n)


# lu10000 = Blocksys.calculateLU(A, n, l, b)
# @time Blocksys.calculateLU(A, n, l, b)
# n = length(lu10000)
#
# Blocksys.exportSolutionToFile("wynikiLU_10000.txt", lu10000, n)

# choiceLU10000 = Blocksys.calculateLUWithChoice(A, n, l, b)
# @time Blocksys.calculateLUWithChoice(A, n, l, b)
# n = length(choiceLU10000)
#
# Blocksys.exportSolutionToFile("wynikiLU_choice10000.txt", choiceLU10000, n)


(A,n,l) = Blocksys.loadMatrixFromFile("Dane50000_1_1/A.txt")
b = Blocksys.loadRightSideVectorFromFile("Dane50000_1_1/b.txt")




# choiceGauss50000 = Blocksys.calculateGaussWithChoice(A, n, l, b)
# @time Blocksys.calculateGaussWithChoice(A, n, l, b)
# n = length(choiceGauss50000)
#
# Blocksys.exportSolutionToFile("wynikiGAUSS_choice50000.txt", choiceGauss50000, n)


# gauss50000 = Blocksys.calculateGaussElimination(A, n, l, b)
# @time Blocksys.calculateGaussElimination(A, n, l, b)
# n = length(gauss50000)
#
# Blocksys.exportSolutionToFile("wynikiGAUSS_50000.txt", gauss50000, n)
#

# lu50000 = Blocksys.calculateLU(A, n, l, b)
# @time Blocksys.calculateLU(A, n, l, b)
# n = length(lu50000)
#
# Blocksys.exportSolutionToFile("wynikiLU_50000.txt", lu50000, n)

# choiceLU50000 = Blocksys.calculateLUWithChoice(A, n, l, b)
# @time Blocksys.calculateLUWithChoice(A, n, l, b)
# n = length(choiceLU50000)
#
# Blocksys.exportSolutionToFile("wynikiLU_choice50000.txt", choiceLU50000, n)
#
#
#
# (A,n,l) = Blocksys.loadMatrixFromFile("Dane50000_1_1/A.txt")
# b = Blocksys.loadRightSideVectorFromFile("Dane50000_1_1/b.txt")
#

# choiceGauss50000 = Blocksys.calculateGaussWithChoice(A, n, l, b)
# @time Blocksys.calculateGaussWithChoice(A, n, l, b)
# n = length(choiceGauss50000)
#
# Blocksys.exportSolutionToFile("wynikiGAUSS_choice50000.txt", choiceGauss50000, n)


# gauss50000 = Blocksys.calculateGaussElimination(A, n, l, b)
# @time Blocksys.calculateGaussElimination(A, n, l, b)
# n = length(gauss50000)
#
# Blocksys.exportSolutionToFile("wynikiGAUSS_50000.txt", gauss50000, n)
#

# lu50000 = Blocksys.calculateLU(A, n, l, b)
# @time Blocksys.calculateLU(A, n, l, b)
# n = length(lu50000)
#
# Blocksys.exportSolutionToFile("wynikiLU_50000.txt", lu50000, n)

# choiceLU50000 = Blocksys.calculateLUWithChoice(A, n, l, b)
# @time Blocksys.calculateLUWithChoice(A, n, l, b)
# n = length(choiceLU50000)
#
# Blocksys.exportSolutionToFile("wynikiLU_choice50000.txt", choiceLU50000, n)
