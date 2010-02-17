!http://3akai.sakaiproject.org/dev/_images/sakai_logo_index.png!

Sakai3scripts - Scripts for the Sakai 3 User Experience project
================================

Introduction
---------------------------------------

* These scripts are meant to make front-end development for the [3akai-ux][3akaiux] project easier.

* The [user experience project][3akaiux] is the front-end project for Sakai 3.

* The [open experiments project][openexperiments] is the back-end project for Sakai 3 (also called Nakamura).

* If you want to contribute to this project, feel free to fork this git repository and push your changes.

Contents
---------------------------------------

* config.sh: Set up configuration file. All other files include it.
* createusers.sh: Create several dummy users.
* sakaibackup.sh:: Back-up your latest Nakamura jar file and your jackrabbit folder (which contains all the JCR content).
* sakaifsresource.sh: Set up the fsresource bundle which allows you to keep the front and back-end separate.
* sakailogging.sh: Start logging of the Nakamura instance.
* sakaiprototypefetch.sh: Fetch all the prototype branches and merge them in.
* sakaisetup.sh: A setup file that would download all the necessary files (such as the fsresource jar).
* sakaistart.sh: Start Sakai3.
* sakaiupdate.sh: Completely update Sakai3 (both front and back-end) and start the server + logging.
* sakaiupdateux.sh: Update the Sakai3 front-end.
* slingremove.sh: Remove the sling folder.

[3akaiux]:			http://github.com/oszkarnagy/3akai-ux
[openexperiments]:	http://github.com/ieb/open-experiments