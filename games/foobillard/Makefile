# $OpenBSD: Makefile,v 1.1.1.1 2010/10/24 20:19:48 phessler Exp $

COMMENT =		free OpenGl billard game

DISTNAME =		foobillard-3.0a

CATEGORIES =		games x11
HOMEPAGE =		http://foobillard.sourceforge.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=foobillard/}

WANTLIB =		GL GLU ICE SM Xaw Xi c freetype m pthread z
LIB_DEPENDS =		png::graphics/png \
			SDL::devel/sdl

USE_X11 =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	automake

.include <bsd.port.mk>
