# $OpenBSD: Makefile,v 1.3 2000/07/13 02:30:21 danh Exp $

DISTNAME=	webalizer-2.00-12-src
PKGNAME=	webalizer-2.00_12
CATEGORIES=     www
NEED_VERSION=	1.314
HOMEPAGE=	http://www.mrunix.net/webalizer/

MAINTAINER=	danh@openbsd.org

MASTER_SITES=	ftp://ftp.mrunix.net/pub/webalizer/pre-release/
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

LIB_DEPENDS=    gd.18::graphics/gd

WRKDIST=	${WRKDIR}/webalizer-2.00-12

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= --enable-dns --with-png=${LOCALBASE}/lib

post-install:
	cd ${PREFIX}/bin; ln -s webalizer webazolver
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/sample.conf ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/webalizer

.include <bsd.port.mk>
