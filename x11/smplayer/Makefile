# $OpenBSD: Makefile,v 1.12 2013/01/07 11:45:21 gonzalo Exp $

COMMENT =		complete front-end for MPlayer

DISTNAME =		smplayer-0.8.3

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ICE QtGui QtNetwork QtXml SM X11 Xext Xi Xinerama Xrender
WANTLIB += c fontconfig freetype m pthread stdc++ z

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
