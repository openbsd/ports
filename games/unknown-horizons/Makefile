# $OpenBSD: Makefile,v 1.5 2019/11/07 11:02:40 kmos Exp $

COMMENT =	economic historical real-time strategy game

MODPY_EGG_VERSION =	2017.2
PKGNAME =		unknown-horizons-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =	unknown-horizons
GH_PROJECT =	unknown-horizons
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	games

HOMEPAGE =	http://www.unknown-horizons.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python \
			textproc/intltool
MODPY_ADJ_FILES =	unknown-horizons
MODPY_PYTEST =		Yes

PORTHOME =		${WRKDIR}

BUILD_DEPENDS =		devel/gettext,-tools
RUN_DEPENDS =		devel/desktop-file-utils \
			games/fifengine
TEST_DEPENDS =		devel/py-greenlet \
			devel/py-mock \
			devel/py-nose \
			textproc/py-polib \
			textproc/py-yaml

.include <bsd.port.mk>
