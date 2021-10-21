# $OpenBSD: Makefile,v 1.20 2021/10/21 20:35:22 sthen Exp $

COMMENT-main=	test network latency under load via netperf
COMMENT-gui=	GUI for flent (test network latency under load via netperf)

MODPY_EGG_VERSION= 2.0.1
DISTNAME=	flent-${MODPY_EGG_VERSION}
PKGNAME-main=	flent-${MODPY_EGG_VERSION}
PKGNAME-gui=	flent-gui-${MODPY_EGG_VERSION}

CATEGORIES=	benchmarks net

HOMEPAGE=	https://flent.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -gui

MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

MODULES=	lang/python

RUN_DEPENDS-main= ${MODPY_RUN_DEPENDS} \
		benchmarks/netperf \
		net/fping>=5.0p0 \
		graphics/py-matplotlib${MODPY_FLAVOR}

RUN_DEPENDS-gui= ${BUILD_PKGPATH} \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/py-qtpy${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

NO_TEST=	Yes

post-build:
	sed -i 's,/usr/local,${TRUEPREFIX},' ${WRKSRC}/flent/build_info.py

.include <bsd.port.mk>
