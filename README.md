# amosum
A novel propagator for amo sum aggregates.

Assuming the starting directory is '.'.

## Commands to Execute
Navigate to the 'wasp' directory and build with Python 3.8:

```bash
cd wasp
make SCRIPT=python38
cd ..
```

# using clingo 5.4.0

# running an instance with amosum propagator:
./clingo <problem>/<instance.asp> <problem>/encoding_with_group_ge_amo.asp --output=smodels | wasp --interpreter=python --script- directory=amosum --plugins-file="amosum -id <ID> -min_r [default|min|cmin] [-write_stats_reason]"

# example with Knapsack default
./clingo Knapsack/0000-knapsack-10-22288-53089-type1.asp Knapsack/encoding_with_group_ge_amo.asp --output=smodels | wasp --interpreter=python --script-directory=amosum --plugins-file="amosum -id 1"


# example with Knapsack minimal reason
./clingo Knapsack/0000-knapsack-10-22288-53089-type1.asp Knapsack/encoding_with_group_ge_amo.asp --output=smodels | wasp --interpreter=python --script-directory=amosum --plugins-file="amosum -id 1 -min_r min"

# example with Knapsack cardinality minimal reason
./clingo Knapsack/0000-knapsack-10-22288-53089-type1.asp Knapsack/encoding_with_group_ge_amo.asp --output=smodels | wasp --interpreter=python --script-directory=amosum --plugins-file="amosum -id 1 -min_r cmin"


# example with Knapsack writing statistics
./clingo Knapsack/0000-knapsack-10-22288-53089-type1.asp Knapsack/encoding_with_group_ge_amo.asp --output=smodels | wasp --interpreter=python --script-directory=amosum --plugins-file="amosum -id 1 -min_r min -write_stats_reason"

# example with Graph Colouring cardinality minimal reason, writing statistics
./clingo GraphColouring/0001-graph_colouring-125-0_1200.asp GraphColouring/encoding_with_group_ge_amo.asp--output=smodels | wasp --interpreter=python --script-directory=amosum --plugins-file="amosum -id 0 -min_r cmin -write_stats_reason"


# running an instance with clingo:
./clingo <problem>/<instance.asp> <problem>/encoding_amo.asp --outf=1

# example
./clingo Knapsack/0000-knapsack-10-22288-53089-type1.asp Knapsack/encoding_amo.asp --outf=1

# running an instance with wasp:
./clingo <problem>/<instance.asp> <problem>/encoding_amo.asp --output=smodels | wasp 

# example
./clingo Knapsack/0000-knapsack-10-22288-53089-type1.asp Knapsack/encoding_amo.asp --output=smodels | wasp
