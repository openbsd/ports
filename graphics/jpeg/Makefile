# $OpenBSD: Makefile,v 1.30 2006/01/08 01:01:18 steven Exp $

COMMENT=	"IJG's JPEG compression utilities"

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6bp3
SHARED_LIBS=	jpeg	62.0
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/ \
		ftp://ftp.shellhung.org/pub/Mirror/enlightenment/enlightenment/libs/

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
