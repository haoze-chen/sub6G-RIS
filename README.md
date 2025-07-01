# sub6G-RIS
Data for RIS Calibration

See UCSD_RIS.pptx for element definition and RIS implementation.

See CalibratedBeambook.zip for calibrated beam vectors that can steer the RIS from -45 to 45 degrees, at 5-degree resolution. The calibration is done at a single frequency of 4.5 GHz. Each beam vector is a 1x72 vector. Each number in the beam vector corresponds to the configuration of a single element, which includes two antennas (this is defined by UCSD and is shown in UCSD_RIS.pptx). Use decodePhase.m to translate the 1x72 beam vector to a 1x144 phase vector that corresponds to the phase profile.

libraryMultilobe.mat and libraryRandom.mat corresponds to a fingerprinting library under a multilobe beam and a random beam, respectively. For each library, it is a 19x19 matrix. Each row of the matrix contains the spectral signature at a fixed angular location, and each column of the matrix contains the beam pattern at a fixed frequency. The frequencies are from 3 to 4.8 GHz at 100 MHz steps (19 total), and the angles are from -45 to 45 degrees at 5-degree steps (also 19 total).

You can also find the spectral signature according to each angle within RoboticsLab_Multilobe.zip and RoboticsLab_Random.zip. We calibrated the beams and measured the patterns in a large room to prevent multipath and interference as much as possible.

Example: "n5.mat" corresponds to the beam vector or spectral signature towards -5 degrees.
