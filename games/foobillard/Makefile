# $OpenBSD: Makefile,v 1.6 2013/09/19 16:24:51 landry Exp $

COMMENT =		free OpenGl billard game
BROKEN =		uses GL symbols removed in recent updates

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

.include <bsd.port.mk>
