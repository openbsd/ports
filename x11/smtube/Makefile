# $OpenBSD: Makefile,v 1.12 2015/06/16 14:13:03 gonzalo Exp $

COMMENT =		browse and download YouTube videos

DISTNAME =		smtube-15.5.17

CATEGORIES =		multimedia x11

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		http://smtube.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE QtGui QtNetwork QtScript QtWebKit SM X11 Xext Xi
WANTLIB += Xinerama Xrender c fontconfig freetype m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smtube/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4
RUN_DEPENDS =		x11/smplayer \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smtube

MAKE_FLAGS =		QMAKE=${LOCALBASE}/bin/qmake4 \
			LRELEASE=${LOCALBASE}/bin/lrelease4

.include <bsd.port.mk>
