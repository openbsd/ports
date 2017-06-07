# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:38 rsadowski Exp $

COMMENT =	KDE Gettext-based UI text internationalization
DISTNAME =	ki18n-${VERSION}

SHARED_LIBS =	KF5I18n		2.0

WANTLIB =	Qt5Core Qt5Script intl m

MODULES =	lang/python

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/gettext \
		x11/qt5/qtscript

# for tests
PORTHOME =	${WRKDIR}

# Calling compileall.py isn't needed, the ts-pmap-compile script
# gets called with "${PYTHON} -B ...".

.include <bsd.port.mk>
