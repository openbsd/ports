# $OpenBSD: Makefile,v 1.33 2009/04/08 11:46:10 eric Exp $

COMMENT=	IJG's JPEG compression utilities

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6bp4
SHARED_LIBS=	jpeg	62.0
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/jpeg-6b

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA} ${WRKDIST}/libjpeg.doc ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jpeg
	${INSTALL_DATA} ${WRKDIST}/example.c ${PREFIX}/share/examples/jpeg

.include <bsd.port.mk>
