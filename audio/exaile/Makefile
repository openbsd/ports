# $OpenBSD: Makefile,v 1.37 2019/07/12 20:43:33 sthen Exp $

COMMENT =	music manager and player for GTK+ written in Python

V =		3.4.5
DISTNAME =	exaile-${V}
REVISION =	0

CATEGORIES =	audio x11

HOMEPAGE =	http://www.exaile.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

MASTER_SITES =	https://github.com/exaile/exaile/releases/download/${V}/

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

COMMON_DEPENDS =x11/dbus-python>=0.82.1 \
		devel/py-notify>=0.1.1 \
		audio/py-mutagen>=1.11 \
		audio/py-cddb>=1.4 \
		x11/py-gtk2>=2.17 \
		devel/libglade2 \
		multimedia/gstreamer-0.10/core \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/py-gstreamer

BUILD_DEPENDS =	${COMMON_DEPENDS} \
		devel/gettext,-tools
RUN_DEPENDS =	${COMMON_DEPENDS} \
		devel/desktop-file-utils

USE_GMAKE =	Yes

TEST_TARGET=	test
PORTHOME =	${WRKDIR}
TEST_DEPENDS=	devel/py-nose \
		devel/py-mox
TEST_ENV=	EXAILE_DIR=${WRKOBJ}/test

CONFIGURE_STYLE =none
SUBST_VARS +=	MODPY_SITEPKG

post-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/data/exaile.desktop \
		${WRKSRC}/plugins/Makefile ${WRKSRC}/tools/generate-launcher
	@find ${WRKSRC} -name "*.orig" -exec rm -f {} \;

.include <bsd.port.mk>
