# $OpenBSD: Makefile,v 1.7 2017/03/09 18:55:47 sthen Exp $

COMMENT-main=	test network latency under load via netperf
COMMENT-gui=	GUI for flent (test network latency under load via netperf)

MODPY_EGG_VERSION= 1.0.1
DISTNAME=	flent-${MODPY_EGG_VERSION}
PKGNAME-main=	flent-${MODPY_EGG_VERSION}
PKGNAME-gui=	flent-gui-${MODPY_EGG_VERSION}

CATEGORIES=	benchmarks net

HOMEPAGE=	https://github.com/tohojo/netperf-wrapper

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

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
