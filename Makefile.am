## automake.am
##
## Top level automake.am for paravel_theme
##
## Use automake to process this into a Makefile.in
##
##   (C) Copyright 2002-2006,2008 Fred Gleason <fredg@paravelsystems.com>
##
##   This program is free software; you can redistribute it and/or modify
##   it under the terms of the GNU General Public License version 2 as
##   published by the Free Software Foundation.
##
##   This program is distributed in the hope that it will be useful,
##   but WITHOUT ANY WARRANTY; without even the implied warranty of
##   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##   GNU General Public License for more details.
##
##   You should have received a copy of the GNU General Public
##   License along with this program; if not, write to the Free Software
##   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
##

SUBDIRS = ksplash\
          qt\
          wallpapers

rpm:	dist
	cp paravel_theme-$(VERSION).tar.gz $(RPM_ROOT)/SOURCES/
	$(RPMBUILD) -ba --target noarch-$(VENDOR)-linux paravel_theme.spec
	mv $(RPM_ROOT)/RPMS/noarch/paravel_theme-$(VERSION)* $(top_srcdir)/
	mv $(RPM_ROOT)/SRPMS/paravel_theme-$(VERSION)* $(top_srcdir)/
	rm $(RPM_ROOT)/SOURCES/paravel_theme-$(VERSION).tar.gz
	rm -rf $(RPM_ROOT)/BUILD/paravel_theme-$(VERSION)

slack:	
	./make_slack

EXTRA_DIST = autogen.sh\
             broadcast_appliance_readme.odt\
             gconf-config.tar\
             make_slack.in\
             paravel_support.odt\
             paravel_support.pdf\
             paravel_theme.spec.in\
             slack-desc.in\
             slack_doinst.sh

CLEANFILES = *~ *.tar.gz *.tgz *.mo *.rpm *.zip
DISTCLEANFILES = paravel_theme.spec make_slack slack-desc
MAINTAINERCLEANFILES = *~ Makefile.in configure aclocal.m4 *.tar.gz\
                       config.guess config.status config.sub install-sh\
                       libtool ltmain.sh missing mkinstalldirs depcomp\
                       paravel_theme.spec
