# $OpenBSD: Makefile,v 1.8 2000/11/20 00:46:31 danh Exp $

DISTNAME=	webalizer-2.01-06-src
PKGNAME=	webalizer-2.01.06
CATEGORIES=     www
NEED_VERSION=	1.340
MASTER_SITES=	ftp://ftp.mrunix.net/pub/webalizer/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.mrunix.net/webalizer/

LIB_DEPENDS=    gd.18::graphics/gd

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

WRKDIST=	${WRKDIR}/webalizer-2.01-06

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--enable-dns --with-png=${LOCALBASE}/lib

post-install:
	cd ${PREFIX}/bin && ln -s webalizer webazolver
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/webalizer
	${INSTALL_DATA} ${WRKSRC}/sample.conf \
		${PREFIX}/share/examples/webalizer

.include <bsd.port.mk>
