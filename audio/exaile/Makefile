# $OpenBSD: Makefile,v 1.28 2013/08/20 22:05:46 zhuk Exp $

COMMENT =	music manager and player for GTK+ written in Python

V =		3.3
P =		1
DISTNAME =	exaile-${V}.${P}
REVISION =	1

CATEGORIES =	audio x11

HOMEPAGE =	http://www.exaile.org/

MASTER_SITES = http://www.launchpad.net/exaile/$V.x/$V.$P/+download/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

COMMON_DEPENDS =x11/dbus-python>=0.82.1 \
		devel/py-notify>=0.1.1 \
		audio/py-mutagen>=1.11 \
		audio/py-cddb>=1.4 \
		x11/py-gtk2>=2.17 \
		devel/libglade2 \
		multimedia/gstreamer-0.10/core \
		multimedia/gstreamer-0.10/plugins-base \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ugly \
		multimedia/gstreamer-0.10/py-gstreamer

BUILD_DEPENDS =	${COMMON_DEPENDS}
RUN_DEPENDS =	${COMMON_DEPENDS} \
		devel/desktop-file-utils

USE_GMAKE =	Yes

TEST_TARGET=	test
PORTHOME =	${WRKDIR}
TEST_DEPENDS=	devel/py-nose \
		devel/py-mox

CONFIGURE_STYLE =none
SUBST_VARS +=	MODPY_SITEPKG

post-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/data/exaile.desktop \
		${WRKSRC}/plugins/Makefile ${WRKSRC}/tools/generate-launcher
	@find ${WRKSRC} -name "*.orig" -exec rm -f {} \;

.include <bsd.port.mk>
