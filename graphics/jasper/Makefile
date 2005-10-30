# $OpenBSD: Makefile,v 1.5 2005/10/30 00:10:40 fgsch Exp $

COMMENT=	"reference implementation of JPEG-2000"

DISTNAME=	jasper-1.701.0
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

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-x --disable-opengl
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acaux

.include <bsd.port.mk>
