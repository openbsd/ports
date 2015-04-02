# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:13 jasper Exp $

COMMENT=	test network latency under load via netperf

MODPY_EGG_VERSION= 0.5.6
DISTNAME=	netperf-wrapper-${MODPY_EGG_VERSION}

CATEGORIES=	benchmarks net

HOMEPAGE=	https://github.com/tohojo/netperf-wrapper

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	benchmarks/netperf \
		graphics/py-matplotlib>=1.2 \
		net/fping>=2.4b2p7

NO_TEST=	Yes

post-build:
	perl -pi -e 's,/usr/local,${TRUEPREFIX},' \
	    ${WRKSRC}/netperf_wrapper/build_info.py

.include <bsd.port.mk>
