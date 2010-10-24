# $OpenBSD: Makefile,v 1.3 2010/10/24 21:19:01 ajacoutot Exp $

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

USE_GMAKE =		Yes
CONFIGURE_STYLE =	automake

.include <bsd.port.mk>
