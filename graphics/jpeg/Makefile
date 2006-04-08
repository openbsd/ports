# $OpenBSD: Makefile,v 1.31 2006/04/08 20:28:36 sturm Exp $

COMMENT=	"IJG's JPEG compression utilities"

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6bp3
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

.include <bsd.port.mk>
