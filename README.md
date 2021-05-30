# Introduction
- Cyclic voltammetry simulation of mediated enzymatic catalysis on an adsorbed monolayer.
- The app is used in the course "Electrobiotechnology", taught by Prof. Dr. Nicolas Plumeré in the Professorship for Electrobiotechnology at the Technical University of Munich, Campus Straubing (TUMCS). A link to the group webpage can be found [here](https://ebt.cs.tum.de/?lang=en). However, the app is freely available for education and research purposes.
- Docker is used here because our group is currently exploring the possibility of deploying research apps using this platform. An in-depth presentation on this topic can be found [here](https://www.youtube.com/watch?v=L4nqky8qGm8).

# System Description Highlights
- Simulation of the experimental cyclic voltammogram signal for a given set of dimensional parameters (concentrations, diffusion rates, catalytic rate constants, etc).
- Redox enzymatic catalysis mediated by a freely diffusing redox mediator.
- Enzyme immobilized as an adsorbed mediator.
- Reversible electron transfer at the electrode (Nernst Equation).
- The mechanism is a ping-pong mechanism with allowance for enyzme inhibition, which was used in the following research [paper](https://pubs.acs.org/doi/10.1021/ja204637d). It is closely related to another [paper](https://pubs.acs.org/doi/10.1021/ja204637d) used for freely diffusing enyzme.

# App Demonstration Video
- A demo of the app is shown in a [video](https://vimeo.com/549025288) for running the app on a windows 10 operating system.

# Results Obtained
- Plot of simulated CV for a given set of dimensional parameters, with the option to construct overlay plots. The resulting plot can be saved as .png.
- The current-potential data points used for the latest simulation are exported to an excel file, which can be copied/pasted into other spreadsheets or graphing programs.
- Options for plotting non-catalytic, catalytic, or total current.
- Non-catalytic peak current calculation (From Randles-Sevcik equation).
- Catalytic plateau current prediction (From algebraic expression, subject to specified limiting conditions).
- Total peak or plateau current based on algebraic expressions.

# Typical Workflow
- If applicable, start up prerequiste supporting software (i.e. Docker, XLaunch).
- Parameters are entered into the included excel file template and saved.
- When starting the app, the location of the parameter and data export files must be confirmed. This only needs to be done once per session, or when wanting to reset the simulation number back to 1 (i.e. preparing for an overlay plot).
- The simulation is then performed by pressing a button in the main menu.
- A plot of the cyclic voltammogram appears and the data is also sent to an export excel file.
- Closing the main window of the simulation also closes the terminal dialogue window and closes the app.

# Operating Systems and Installation
- The app can be run from Windows 10 or from Ubuntu 18.04 LTS.
- The core of the simulation is carried out in a common Docker image, which is used by either the windows 10 or ubuntu 18.04 host operating system. Therefore, installation of docker is required. It is also necessary to register for a free docker account.
- The docker image requires use of the host screen infrastructure to show the simple graphical user interface menu and the plots on the screen. Therefore, on Windows 10 systems, installation of XLaunch is required. However, this is not required on Linux 18.04 systems.
- It is recommended that the installation of the prerequisites for this app (Docker and xLaunch) be performed by IT-support personnel or by advanced PC users (i.e. comfortable going into bios to change settings, using the command line, resolution of system-specific issues that might arise via google search and some troubleshooting).
- Installation and use of the app itself does not require any specialized computer knowledge once the prerequisites are fulfulled.
- Additional installation instructions which are operating system specific can be found within this project for [Windows 10](https://github.com/DLBuesen/cv_sim_med_ads_mono_08may2021/tree/main/project/windows10) and for [Ubuntu 18.04](https://github.com/DLBuesen/cv_sim_med_ads_mono_08may2021/tree/main/project/ubuntu1804).

# License
- This app was made using Matlab with an education and research license. Therefore, use of the app must be within the scope of this license.


