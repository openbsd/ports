# $OpenBSD: Makefile,v 1.37 2019/07/12 20:48:48 sthen Exp $

COMMENT=	powerful interactive packet manipulation in python

MODPY_EGG_VERSION=	2.4.2
REVISION=		1
DISTNAME=		scapy-${MODPY_EGG_VERSION}
CATEGORIES=		net

HOMEPAGE=	https://scapy.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES0=	https://spacehopper.org/mirrors/
DISTFILES=	${EXTRACT_ONLY} ethertypes-20120703:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MODULES=	lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
UPDATE_PLIST_ARGS=	-i MODPY_PY_PREFIX

RUN_DEPENDS=	net/libdnet,-python \
		net/py-libpcap \
		security/py-cryptodome \
		security/py-ecdsa

pre-configure:
	sed -i "s,/etc/ethertypes,${SYSCONFDIR}/ethertypes,g" \
		${WRKSRC}/scapy/data.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scapy
	${INSTALL_DATA} ${DISTDIR}/ethertypes-20120703 \
		${PREFIX}/share/examples/scapy/ethertypes

# The tests are no longer included in the 2.4.2 tar.gz from pypi.org.
# Enable them again if they come back eventually.  Some tests require root.
NO_TEST =	Yes

.include <bsd.port.mk>
