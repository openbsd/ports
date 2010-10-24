# $OpenBSD: Makefile,v 1.2 2010/10/24 20:28:01 ajacoutot Exp $

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

WANTLIB =		GL GLU ICE SM Xaw Xi c freetype m pthread z png SDL
LIB_DEPENDS =		::graphics/png \
			::devel/sdl

USE_X11 =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	automake

.include <bsd.port.mk>
