# $OpenBSD: Makefile,v 1.8 2007/03/29 13:43:52 jasper Exp $

COMMENT=	"reference implementation of JPEG-2000"

DISTNAME=	jasper-1.900.1
SHARED_LIBS=	jasper		2.0

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

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--without-x \
			--disable-opengl
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acaux

.include <bsd.port.mk>
