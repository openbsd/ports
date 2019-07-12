# $OpenBSD: Makefile,v 1.14 2019/07/12 20:43:43 sthen Exp $

COMMENT-main=	test network latency under load via netperf
COMMENT-gui=	GUI for flent (test network latency under load via netperf)

MODPY_EGG_VERSION= 1.2.2
DISTNAME=	flent-${MODPY_EGG_VERSION}
PKGNAME-main=	flent-${MODPY_EGG_VERSION}
PKGNAME-gui=	flent-gui-${MODPY_EGG_VERSION}
REVISION-gui=	0
REVISION-main=	0

CATEGORIES=	benchmarks net

HOMEPAGE=	https://flent.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -gui

MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

MODULES=	lang/python

RUN_DEPENDS-main= benchmarks/netperf \
		net/fping>=2.5 \
		graphics/py-matplotlib${MODPY_FLAVOR}

RUN_DEPENDS-gui= ${RUN_DEPENDS-main} \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/py-qt5${MODPY_FLAVOR}

NO_TEST=	Yes

post-build:
	sed -i 's,/usr/local,${TRUEPREFIX},' ${WRKSRC}/flent/build_info.py

.include <bsd.port.mk>
