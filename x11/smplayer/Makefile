# $OpenBSD: Makefile,v 1.25 2016/04/15 15:11:38 gonzalo Exp $

COMMENT =		complete front-end for MPlayer

DISTNAME =		smplayer-16.4.0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE QtDBus QtGui QtNetwork QtScript QtXml SM X11 Xext
WANTLIB += Xi Xinerama Xrender c fontconfig freetype m pthread
WANTLIB += stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		x11/mplayer>=20090708 \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smplayer

MAKE_FLAGS =		QMAKE=${LOCALBASE}/bin/qmake4 \
			LRELEASE=${LOCALBASE}/bin/lrelease4

.include <bsd.port.mk>
