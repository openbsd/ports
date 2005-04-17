# $OpenBSD: Makefile,v 1.27 2005/04/17 13:37:42 espie Exp $

COMMENT=	"IJG's JPEG compression utilities"

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6bp2
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/ \
		ftp://ftp.shellhung.org/pub/Mirror/enlightenment/enlightenment/libs/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/jpeg-6b

.include <bsd.port.mk>
