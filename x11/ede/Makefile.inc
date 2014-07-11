# $OpenBSD: Makefile.inc,v 1.2 2014/07/11 21:39:04 pascal Exp $

V =		2.1
FULL_V =	2.1.0
CATEGORIES =	x11
HOMEPAGE =	http://equinox-project.org
MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>
SUBST_VARS +=	FULL_V

# (L)GPLv2+
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ede/}
