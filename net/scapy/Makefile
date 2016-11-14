# $OpenBSD: Makefile,v 1.22 2016/11/14 20:04:56 danj Exp $

COMMENT=	powerful interactive packet manipulation in python

MODPY_EGG_VERSION=	2.3.3
DISTNAME=		scapy-${MODPY_EGG_VERSION}

CATEGORIES=		net

HOMEPAGE=	http://secdev.org/projects/scapy/

MAINTAINER=	Daniel Jakots <obsd@chown.me>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES0=	https://spacehopper.org/mirrors/
DISTFILES=	${DISTNAME}.tgz ethertypes-20120703:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
EXTRACT_SUFX=	.tgz

MODULES=	lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	net/libdnet,-python \
		net/py-libpcap \
		security/py-crypto \
		security/py-ecdsa
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
