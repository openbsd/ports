# $OpenBSD: Makefile,v 1.1.1.1 2006/04/19 17:36:58 alek Exp $

COMMENT=	"powerful interactive packet manipulation in python"

DISTNAME=	scapy-1.0.4
CATEGORIES=	net

HOMEPAGE=	http://secdev.org/projects/scapy/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ethertypes
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
EXTRACT_SUFX=	.tar.gz

MODULES=	lang/python

RUN_DEPENDS=	:py-libdnet-*:net/libdnet,-python \
		:py-libpcap-*:net/py-libpcap \
		:py-crypto-*:security/py-crypto \
		:py-gnuplot-*:math/py-gnuplot

PKG_ARCH=	*
NO_REGRESS=	Yes

do-build:
	gunzip < ${WRKSRC}/scapy.1.gz > ${WRKBUILD}/scapy.1
	perl -p -i -e "s,^(\#\S+ \S+ )python\$$,#!${MODPY_BIN}," \
		${WRKSRC}/*.py
	perl -p -i -e "s,/etc/ethertypes,${SYSCONFDIR}/ethertypes,g" \
		${WRKSRC}/*.py

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG}
	${INSTALL_SCRIPT} ${WRKSRC}/scapy.py ${WRKINST}${MODPY_SITEPKG}
	ln -s ${MODPY_SITEPKG}/scapy.py ${PREFIX}/bin/scapy
	${INSTALL_MAN} ${WRKBUILD}/scapy.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scapy
	${INSTALL_DATA} ${DISTDIR}/ethertypes ${PREFIX}/share/examples/scapy

.include <bsd.port.mk>
