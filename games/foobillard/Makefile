# $OpenBSD: Makefile,v 1.9 2015/11/24 03:13:26 jsg Exp $

COMMENT =		OpenGL billard game

DISTNAME =		foobillard-3.0a
REVISION =		0

CATEGORIES =		games x11
HOMEPAGE =		http://foobillard.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SDL SM Xaw Xi c freetype m png pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=foobillard/}

LIB_DEPENDS =		graphics/png \
			devel/sdl

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-nvidia=no
CFLAGS = 		-DNO_NV_BUMPREF

.include <bsd.port.mk>
