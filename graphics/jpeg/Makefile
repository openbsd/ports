# $OpenBSD: Makefile,v 1.23 2002/01/24 04:24:09 brad Exp $

COMMENT=	"IJG's JPEG compression utilities"

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-6b
CATEGORIES=	graphics
NEED_VERSION=	1.500
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/ \
		ftp://ftp.shellhung.org/pub/Mirror/enlightenment/enlightenment/libs/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

WRKDIST=	${WRKDIR}/jpeg-6b

.include <bsd.port.mk>
