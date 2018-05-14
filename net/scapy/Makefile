# $OpenBSD: Makefile,v 1.26 2018/05/14 06:54:47 jasper Exp $

COMMENT=	powerful interactive packet manipulation in python

MODPY_EGG_VERSION=	2.3.3
DISTNAME=		scapy-${MODPY_EGG_VERSION}
REVISION =		3

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
		security/py-cryptodome \
		security/py-ecdsa
TEST_DEPENDS=${RUN_DEPENDS}

PKG_ARCH=	*

post-extract:
	gunzip ${WRKSRC}/doc/scapy.1.gz

# py-crypto -> py-cryptodome
_PYCRYPTO =	scapy/layers/dot11.py \
		scapy/layers/ipsec.py \
		scapy/layers/ntp.py \
		scapy/layers/tls/cert.py \
		scapy/layers/tls/crypto/pkcs1.py \
		scapy/layers/tls/__init__.py \
		scapy/contrib/ospf.py

pre-patch:
.for f in ${_PYCRYPTO}
	sed -i 's,from Crypto,from Cryptodome,g' ${WRKSRC}/$f
.endfor

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
