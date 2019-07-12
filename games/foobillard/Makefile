# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:17 sthen Exp $

COMMENT =		OpenGL billard game

DISTNAME =		foobillard-3.0a
REVISION =		0

CATEGORIES =		games x11
HOMEPAGE =		http://foobillard.sourceforge.net/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU ICE SDL SM Xaw Xi c freetype m png pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=foobillard/}

LIB_DEPENDS =		graphics/png \
			devel/sdl

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-nvidia=no
CFLAGS = 		-DNO_NV_BUMPREF

.include <bsd.port.mk>
