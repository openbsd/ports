# $OpenBSD: Makefile.inc,v 1.1.1.1 2013/07/14 00:36:30 pascal Exp $

V =		2.0
FULL_V =	2.0.0
CATEGORIES =	x11
HOMEPAGE =	http://equinox-project.org
MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>
SUBST_VARS +=	FULL_V

# (L)GPLv2+
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ede/}
