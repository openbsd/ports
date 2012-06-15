# $OpenBSD: Makefile,v 1.11 2012/06/15 08:30:24 ajacoutot Exp $

COMMENT =		complete front-end for MPlayer

DISTNAME =		smplayer-0.8.0
REVISION =		0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = c m pthread stdc++ z QtGui QtNetwork QtXml
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		x11/mplayer>=20090708 \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

USE_GMAKE =		Yes

NO_REGRESS =		Yes

ALL_TARGET =		src/smplayer

.include <bsd.port.mk>
