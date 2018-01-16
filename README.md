# Kendall
# Language: R
# Input: CSV (abundances)
# Output: CSV (correlations)

PluMA plugin to compute Kendall correlations (Kendall, 1970).

The plugin takes as input a CSV file with rows representing samples and columns representing
community members.  Entry (i, j) of this matrix then contains the abundances of member j in sample i.

The plugin produces an output file, also in CSV format.  Both rows and columns now
represent community members, with entry (i, j) containing the Kendall correlation between
member i and member j.
