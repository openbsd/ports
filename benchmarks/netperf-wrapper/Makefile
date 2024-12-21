COMMENT-main=	test network latency under load via netperf
COMMENT-gui=	GUI for flent (test network latency under load via netperf)
REVISION-gui=	1
REVISION-main=	1

MODPY_DISTV=	2.1.1
DISTNAME=	flent-${MODPY_DISTV}

CATEGORIES=	benchmarks net

HOMEPAGE=	https://flent.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -gui

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODULES=	lang/python

RUN_DEPENDS-main= ${MODPY_RUN_DEPENDS} \
		benchmarks/netperf \
		net/fping>=5.0p0 \
		graphics/py-matplotlib

RUN_DEPENDS-gui= ${BUILD_PKGPATH} \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/py-qtpy \
		x11/py-qt5

NO_TEST=	Yes

post-build:
	sed -i 's,/usr/local,${TRUEPREFIX},' ${WRKSRC}/flent/build_info.py

.include <bsd.port.mk>
