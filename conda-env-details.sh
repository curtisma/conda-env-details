
if [[ $1 ]] && [[ $2 ]]; then
  echo "ERROR: Please only specify either the name or prefix."
  exit 0
fi

echo "INPUTS"
echo "------"
if [[ $1 ]]; then
  printf ' Environment name:\n  %s\n' "$1"
fi
if [[ $2 ]]; then
  printf ' Environment prefix:\n  %s\n' "$2"
fi

echo ""
if { ! [[ $CONDA ]]; } && [[ $2 ]]; then
  echo "Initializing conda"
  source "$1/etc/profile.d/conda.sh"  # setup conda
fi
#echo "Activating conda"
#if ! [[ $1 ]]; then
#  conda activate $1
#else
#  conda activate $2
#fi

echo ""
conda info -a -v
echo ""
echo "Packages in the environment:"
conda list
