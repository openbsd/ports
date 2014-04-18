# $OpenBSD: Makefile.inc,v 1.1.1.1 2014/04/18 15:14:05 pascal Exp $

V =			0.5.1.r1

SUBST_VARS +=		V

CATEGORIES =		games

HOMEPAGE =		http://vegastrike.sourceforge.net/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vegastrike/}
EXTRACT_SUFX ?=		.tar.bz2

NO_TEST =		Yes
