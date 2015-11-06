# $OpenBSD: Makefile,v 1.6 2015/11/06 20:42:26 sthen Exp $

COMMENT=	test network latency under load via netperf

MODPY_EGG_VERSION= 0.9.1
REVISION=	1
DISTNAME=	netperf-wrapper-${MODPY_EGG_VERSION}

CATEGORIES=	benchmarks net

HOMEPAGE=	https://github.com/tohojo/netperf-wrapper

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	benchmarks/netperf \
		devel/desktop-file-utils \
		graphics/py-matplotlib>=1.2 \
		net/fping>=2.4b2p7

NO_TEST=	Yes

post-build:
	sed -i 's,/usr/local,${TRUEPREFIX},' \
		${WRKSRC}/netperf_wrapper/build_info.py

.include <bsd.port.mk>
