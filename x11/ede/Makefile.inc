# $OpenBSD: Makefile.inc,v 1.3 2016/05/07 12:40:58 pascal Exp $

V =		2.1
FULL_V =	2.1.0
CATEGORIES =	x11
HOMEPAGE =	http://equinox-project.org
MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>
SUBST_VARS +=	FULL_V

# (L)GPLv2+
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ede/}
