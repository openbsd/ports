# $OpenBSD: Makefile,v 1.1.1.1 2001/01/19 02:55:18 kevlo Exp $

DISTNAME=       ttfm-0.9.2
PKGNAME=        zh-${DISTNAME}
CATEGORIES=     chinese 
NEED_VERSION=	1.351

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://freebsd.sinica.edu.tw/pub/keith/ttfm/

DOCS=	README USAGE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttfm
	${INSTALL_DATA_DIR} ${PREFIX}/share/ttfm
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ttfm 
	cp ${WRKSRC}/modules/* ${PREFIX}/share/ttfm

.include <bsd.port.mk>
