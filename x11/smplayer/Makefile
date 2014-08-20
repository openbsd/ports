# $OpenBSD: Makefile,v 1.17 2014/08/20 16:24:11 gonzalo Exp $

COMMENT =		complete front-end for MPlayer

DISTNAME =		smplayer-14.3.0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread stdc++
WANTLIB += ICE QtGui QtNetwork QtScript QtXml SM X11 Xext Xi Xinerama
WANTLIB += Xrender c fontconfig freetype m pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		x11/mplayer>=20090708 \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smplayer

MAKE_FLAGS =		QMAKE=${LOCALBASE}/bin/qmake4 \
			LRELEASE=${LOCALBASE}/bin/lrelease4

.include <bsd.port.mk>
