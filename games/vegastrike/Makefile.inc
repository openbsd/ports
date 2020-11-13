# $OpenBSD: Makefile.inc,v 1.5 2020/11/13 22:25:45 sthen Exp $

ONLY_FOR_ARCHS =	amd64 i386
BROKEN-i386 =		-engine depends on broken x11/ogre, other subports are useless withtou

V =			0.5.1.r1

SUBST_VARS +=		V

CATEGORIES =		games

HOMEPAGE =		http://vegastrike.sourceforge.net/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vegastrike/}
EXTRACT_SUFX ?=		.tar.bz2

NO_TEST =		Yes
