# $OpenBSD: Makefile,v 1.21 2016/01/31 23:21:37 sthen Exp $

COMMENT=	powerful interactive packet manipulation in python

MODPY_EGG_VERSION=	2.3.2
DISTNAME=		scapy-${MODPY_EGG_VERSION}

GH_ACCOUNT=		secdev
GH_PROJECT=		scapy
GH_TAGNAME=		v${MODPY_EGG_VERSION}

CATEGORIES=		net

HOMEPAGE=	http://secdev.org/projects/scapy/

MAINTAINER=	Jonathan Armani <armani@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES0=	https://spacehopper.org/mirrors/
DISTFILES=	${DISTNAME}.tar.gz ethertypes-20120703:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MODULES=	lang/python
RUN_DEPENDS=	net/libdnet,-python \
		net/py-libpcap \
		security/py-crypto \
		math/py-gnuplot
TEST_DEPENDS=${RUN_DEPENDS}

PKG_ARCH=	*

post-extract:
	gunzip ${WRKSRC}/doc/scapy.1.gz

pre-configure:
	sed -i "s,/etc/ethertypes,${SYSCONFDIR}/ethertypes,g" \
		${WRKSRC}/scapy/data.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scapy
	${INSTALL_DATA} ${DISTDIR}/ethertypes-20120703 ${PREFIX}/share/examples/scapy/ethertypes

# some tests require root.
do-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	cd ${WRKSRC}/test; PATH=${WRKDIR}/bin:${PATH} ${WRKSRC}/test/run_tests

.include <bsd.port.mk>
