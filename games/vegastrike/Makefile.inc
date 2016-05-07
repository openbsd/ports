# $OpenBSD: Makefile.inc,v 1.2 2016/05/07 12:40:57 pascal Exp $

V =			0.5.1.r1

SUBST_VARS +=		V

CATEGORIES =		games

HOMEPAGE =		http://vegastrike.sourceforge.net/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vegastrike/}
EXTRACT_SUFX ?=		.tar.bz2

NO_TEST =		Yes
