dnl configure.in
dnl
dnl Autoconf configuration for paravel_theme.
dnl Use autoconf to process this into a configure script
dnl
dnl   (C) Copyright 2002-2006,2008,2014 Fred Gleason <fredg@paravelsystems.com>
dnl
dnl   This program is free software; you can redistribute it and/or modify
dnl   it under the terms of the GNU General Public License version 2 as
dnl   published by the Free Software Foundation.
dnl
dnl   This program is distributed in the hope that it will be useful,
dnl   but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl   GNU General Public License for more details.
dnl
dnl   You should have received a copy of the GNU General Public
dnl   License along with this program; if not, write to the Free Software
dnl   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
dnl

AC_INIT(paravel_theme3,3.1.1)
AM_INIT_AUTOMAKE
AC_SUBST(RPM_RELEASE,1)

#
# Configure RPM Build
#
AC_CHECK_PROG(RPMBUILD_FOUND,rpmbuild,[yes],[])
if test -z $RPMBUILD_FOUND ; then
  AC_SUBST(RPMBUILD,rpm)
else
  AC_SUBST(RPMBUILD,rpmbuild)
fi
AC_SUBST(VENDOR,redhat)
AC_SUBST(RPM_DATESTAMP,`date +%a\ %b\ %d\ %Y`)

AC_OUTPUT(paravel_theme3.spec \
        Makefile \
        ksplash/Makefile \
        qt/Makefile \
        wallpapers/Makefile \
	make_slack \
	slack-desc \
)

chmod 755 make_slack
