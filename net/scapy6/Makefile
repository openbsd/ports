# $OpenBSD: Makefile,v 1.5 2009/01/02 13:07:37 djm Exp $

COMMENT=	scapy extension to handle IPv6

DISTNAME=	scapy6-20070426
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net

HOMEPAGE=	http://namabiiru.hongo.wide.ad.jp/scapy6

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://diehard.n-r-g.com/files/

MODULES=	lang/python

RUN_DEPENDS=	:scapy->=1.1:net/scapy

PKG_ARCH=	*
NO_REGRESS=	Yes

do-build:
	perl -p -i -e "s,^(\#\S+ \S+ )python\$$,#!${MODPY_BIN}," \
		${WRKSRC}/*.py

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG}
	${INSTALL_SCRIPT} ${WRKSRC}/scapy6.py ${WRKINST}${MODPY_SITEPKG}
	ln -s ${MODPY_SITEPKG}/scapy6.py ${PREFIX}/bin/scapy6

.include <bsd.port.mk>
