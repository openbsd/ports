# $OpenBSD: Makefile,v 1.7 2006/01/08 11:04:59 steven Exp $

COMMENT=	"reference implementation of JPEG-2000"

DISTNAME=	jasper-1.701.0
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	jasper		1.0 \
		jasper-1.701	1.0

CATEGORIES=	graphics
MASTER_SITES=	${HOMEPAGE}software/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.ece.uvic.ca/~mdadams/jasper/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-x --disable-opengl
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acaux

.include <bsd.port.mk>
