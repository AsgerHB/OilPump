README for UPPAAL Stratego 4.1.20-stratego-10, October 2022 
Copyright (c) 2011 - 2022. Aalborg University.
Copyright (c) 1995 - 2010. Uppsala University and Aalborg University.

October 03, 2022

1. Introduction
2. Installation
3. Bugs, issues, feature requests
4. Changelog

1. Introduction
===============

This is a development snapshot of UPPAAL Stratego -- a model checker
which combines the previous technologies and adds explicit strategy support.
The tool combines:
* Symbolic analysis (Uppaal zone based exploration),
* Statistical model-checking (Uppaal SMC),
* Strategy synthesis using Timed games (Uppaal TIGA queries with strategy assignment)
* Performance optimization using statistical learning (min/max-imization queries with strategy assignemnt)
* Strategy refinemnent via learning (queries under strategy)
* Strategy evaluation via Symbolic analysis and SMC (queries under strategy)

The Uppaal toolkit is free for non-commercial applications for academic institutions that
deliver academic degrees. As academic use, we consider only work performed by researchers
or students at institutions delivering academic degrees. In addition, the work or the
worker may not be contracted by any non-academic institution.
Any other use requires a license, see www.uppaal.com for commercial lincensing.

This product includes software developed by the Apache Software
Foundation (http://www.apache.org/).

2. Installation
===============

To install, unzip the zip-file uppaal-4.1.20-stratego-10. This should create
the directory uppaal-4.1.20-stratego-10 containing at least the files uppaal,
uppaal.jar, and the directories lib, bin, lib, fonts, res and demo.
The bin contains the verifyta(.exe) and server(.exe) executable engine files and libraries.
The demo contains demonstration model files with suffixes .xml and .q.

The graphical interface requires Java Runtime Environment (JRE) version >= 11.
Java can be downloaded and installed from https://adoptium.net/
We recommend to include JavaSoft registry entries and associations with jar files.

Linux:
* Launch the uppaal script, or run `java -jar uppaal.jar` on command line
* Launch AddLinks.sh to install Desktop shortcuts and launch Uppaal from Start menu

Windows:
* Launch by double clicking the uppaal.jar file, or run `java -jar uppaal.jar` on command line
* Launch AddLinks.vbs to install Desktop shortcuts and run Uppaal from Start menu

MacOS:
* Remove quarantine attribute: `xattr -r -d com.apple.quarantine uppaal-4.1.20-stratego-10`
* Launch uppaal script, or run `java -jar uppaal.jar` on command line
* Move the UPPAAL-4.1.20-stratego-10.app to Applications and launch it from there.

3. Bugs, Issues, Feature Requests, Discussions
==============================================
Please use the meta-repository to file reports and discuss features:
https://github.com/UPPAALModelChecker/UPPAAL-Meta
More contacts and mailing lists:
https://uppaal.org/contact/

Known Issues in this release:
* Concrete simulator may get stuck after a longer random simulation,
  engine may need to be killed to recover session
  (see "Task Manager" or utility "top" on command line)
* Simulation query still uses the old syntax: `simulate N [bound] { expression-list }`

4. Changelog
====================
You can see the full changelog at https://uppaal.org/changelog/#uppaal-stratego
