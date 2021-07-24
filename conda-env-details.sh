echo "INPUTS"
echo "------"
printf ' Environment prefix:\n  %s\n' "$1"
echo ""
echo "Initializing conda"
source "$1/etc/profile.d/conda.sh"  # setup conda
conda activate $1
echo ""
conda info -a -v
echo ""
echo "Packages in the environment:"
conda list
