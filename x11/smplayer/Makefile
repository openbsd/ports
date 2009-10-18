# $OpenBSD: Makefile,v 1.1.1.1 2009/10/18 22:24:45 edd Exp $

COMMENT =		complete front-end for MPlayer

DISTNAME =		smplayer-0.6.8

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0 iconv intl
WANTLIB += m png pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		:mplayer->=20090708:x11/mplayer \
			::devel/desktop-file-utils
LIB_DEPENDS =		QtGui.>=8,QtNetwork.>=7,QtXml.>=7::x11/qt4

USE_X11 =		Yes
USE_GMAKE =		Yes

NO_REGRESS =		Yes

ALL_TARGET =		src/smplayer

.include <bsd.port.mk>
