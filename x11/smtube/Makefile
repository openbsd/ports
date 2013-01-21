# $OpenBSD: Makefile,v 1.1.1.1 2013/01/21 16:00:57 gonzalo Exp $

COMMENT =		browse and download YouTube videos

DISTNAME =		smtube-1.5

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ICE QtGui QtNetwork QtXml SM X11 Xext Xi Xinerama Xrender
WANTLIB += c fontconfig freetype m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		x11/smplayer \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

USE_GMAKE =		Yes

NO_REGRESS =		Yes

ALL_TARGET =		src/smtube

.include <bsd.port.mk>
