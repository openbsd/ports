# $OpenBSD: Makefile,v 1.1.1.1 2013/06/04 23:45:43 sthen Exp $

COMMENT=	test network latency under load via netperf

MODPY_EGG_VERSION= 0.5.6
DISTNAME=	netperf-wrapper-${MODPY_EGG_VERSION}

CATEGORIES=	benchmarks net

HOMEPAGE=	https://github.com/tohojo/netperf-wrapper

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=n/netperf-wrapper/}

MODULES=	lang/python
RUN_DEPENDS=	benchmarks/netperf \
		graphics/py-matplotlib>=1.2 \
		net/fping>=2.4b2p7

NO_TEST=	Yes

post-build:
	perl -pi -e 's,/usr/local,${TRUEPREFIX},' \
	    ${WRKSRC}/netperf_wrapper/build_info.py

.include <bsd.port.mk>
