# $OpenBSD: Makefile,v 1.27 2016/06/14 23:15:58 gonzalo Exp $

COMMENT =		complete front-end for MPlayer

DISTNAME =		smplayer-16.6.0

CATEGORIES =		multimedia x11

HOMEPAGE =		http://smplayer.sourceforge.net/

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2 (docs/en/gpl.html)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script Qt5Widgets
WANTLIB += Qt5Xml X11 Xext c m pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=smplayer/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt5
RUN_DEPENDS =		x11/mplayer>=20090708 \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		src/smplayer

MAKE_FLAGS =		QMAKE=${MODQT_QMAKE} \
			LRELEASE=${MODQT_LRELEASE}

.include <bsd.port.mk>
