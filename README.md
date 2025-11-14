# CG model of heparin
CG modelling of heparin for MD simulations using LAMMPS.

The simulations correspond to a simple model consisting of charged beads connected by springs (including angles and dihedrals) in implicit solvent with electrostatics, modelled at the [Debye-Hückel approximation level](https://en.wikipedia.org/wiki/Debye_length).

The performance of the model is checked against experimental results for the radius of gyration available [here](https://www.sciencedirect.com/science/article/pii/S0022283609013230?via%3Dihub).

Contents of the repository:
- *dp24*: Results for a heparin with a 24 saccharide units
- *dp18*: Results for a heparin with a 18 saccharide units
- *dp12*: Results for a heparin with a 12 saccharide units
- *Dihedral_exploration*: effect of dihedral force constants in the radius of gyration of heparin for the dp24 case.


