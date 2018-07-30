# $OpenBSD: Makefile,v 1.29 2018/07/30 14:27:37 bluhm Exp $

COMMENT=	powerful interactive packet manipulation in python

MODPY_EGG_VERSION=	2.4.0
REVISION=		0
DISTNAME=		scapy-${MODPY_EGG_VERSION}
CATEGORIES=		net

HOMEPAGE=	https://scapy.net/

MAINTAINER=	Daniel Jakots <obsd@chown.me>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES0=	https://spacehopper.org/mirrors/
DISTFILES=	${EXTRACT_ONLY} ethertypes-20120703:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MODULES=	lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	net/libdnet,-python \
		net/py-libpcap \
		security/py-cryptodome \
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
	${INSTALL_DATA} ${DISTDIR}/ethertypes-20120703 \
		${PREFIX}/share/examples/scapy/ethertypes

# some tests require root.
do-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	cd ${WRKSRC}/test; PATH=${WRKDIR}/bin:${PATH} ${WRKSRC}/test/run_tests

.include <bsd.port.mk>
