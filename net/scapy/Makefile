# $OpenBSD: Makefile,v 1.11 2009/10/01 16:42:12 sthen Exp $

COMMENT=	powerful interactive packet manipulation in python

MODPY_EGG_VERSION=	2.0.1
DISTNAME=		scapy-${MODPY_EGG_VERSION}
CATEGORIES=		net

HOMEPAGE=	http://secdev.org/projects/scapy/

MAINTAINER=	Jonathan Armani <dbd@asystant.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ethertypes
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MODULES=	lang/python
RUN_DEPENDS=	:py-libdnet-*:net/libdnet,-python \
		:py-libpcap-*:net/py-libpcap \
		:py-crypto-*:security/py-crypto \
		:py-gnuplot-*:math/py-gnuplot
REGRESS_DEPENDS=${RUN_DEPENDS}

PKG_ARCH=	*

post-extract:
	gunzip ${WRKSRC}/doc/scapy.1.gz

pre-configure:
	perl -p -i -e "s,/etc/ethertypes,${SYSCONFDIR}/ethertypes,g" \
		${WRKSRC}/scapy/data.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scapy
	${INSTALL_DATA} ${DISTDIR}/ethertypes ${PREFIX}/share/examples/scapy

# some tests require root. you may also need to increase
# the number of bpf device nodes (/dev/bpf*) to ~40.
do-regress:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	cd ${WRKSRC}/test; PATH=${WRKDIR}/bin:${PATH} ${WRKSRC}/test/run_tests

.include <bsd.port.mk>
