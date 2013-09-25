# $OpenBSD: Makefile,v 1.7 2013/09/25 12:43:11 kirby Exp $

COMMENT =		free OpenGl billard game

DISTNAME =		foobillard-3.0a

CATEGORIES =		games x11
HOMEPAGE =		http://foobillard.sourceforge.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=foobillard/}

WANTLIB =		GL GLU ICE SM Xaw Xi c freetype m pthread z png SDL
LIB_DEPENDS =		graphics/png \
			devel/sdl

USE_GMAKE =		Yes
CONFIGURE_STYLE =	automake
CFLAGS += 		-DNO_NV_BUMPREF

.include <bsd.port.mk>
