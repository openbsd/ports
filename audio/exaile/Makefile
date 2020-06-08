# $OpenBSD: Makefile,v 1.41 2020/06/08 11:01:10 jasper Exp $

COMMENT =	music manager and player for GTK+ written in Python

# on Python 3 support: https://github.com/exaile/exaile/issues/246

V =		4.0.2
DISTNAME =	exaile-${V}

CATEGORIES =	audio x11

HOMEPAGE =	https://www.exaile.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

MASTER_SITES =	https://github.com/exaile/exaile/releases/download/${V}/

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

COMMON_DEPENDS = audio/py-cddb>=1.4${MODPY_FLAVOR} \
		audio/py-mutagen>=1.11${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR} \
		devel/py-notify>=0.1.1${MODPY_FLAVOR} \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-good \
		x11/dbus-python>=0.82.1${MODPY_FLAVOR}

BUILD_DEPENDS =	${COMMON_DEPENDS} \
		devel/gettext,-tools
RUN_DEPENDS =	${COMMON_DEPENDS} \
		${MODPY_RUN_DEPENDS},-bsddb \
	     	devel/desktop-file-utils

USE_GMAKE =	Yes

TEST_TARGET=	test
PORTHOME =	${WRKDIR}
TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR} \
		devel/py-mox3${MODPY_FLAVOR}
TEST_ENV=	EXAILE_DIR=${WRKOBJ}/test

CONFIGURE_STYLE =none
SUBST_VARS +=	MODPY_SITEPKG

post-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/data/exaile.desktop \
		${WRKSRC}/plugins/Makefile ${WRKSRC}/tools/generate-launcher
	@find ${WRKSRC} -name "*.orig" -delete

.include <bsd.port.mk>
