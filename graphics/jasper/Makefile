# $OpenBSD: Makefile,v 1.2 2004/07/07 03:18:42 espie Exp $

COMMENT=	"reference implementation of JPEG-2000"

DISTNAME=	jasper-1.701.0
CATEGORIES=	graphics
MASTER_SITES=	${HOMEPAGE}software/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.ece.uvic.ca/~mdadams/jasper/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-x --disable-opengl

.include <bsd.port.mk>
