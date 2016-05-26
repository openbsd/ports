# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	KDE Gettext-based UI text internationalization
DISTNAME =	ki18n-${VERSION}

SHARED_LIBS =	KF5I18n		0.0

WANTLIB =	Qt5Core Qt5Script intl m

MODULES =	lang/python

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/gettext

CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0037=OLD

# for tests
PORTHOME =	${WRKDIR}

# Calling compileall.py isn't needed, the ts-pmap-compile script
# gets called with "${PYTHON} -B ...".

.include <bsd.port.mk>
