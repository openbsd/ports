# $OpenBSD: Makefile,v 1.31 2019/07/12 20:46:02 sthen Exp $

COMMENT=	Type 1 rasterizer library for UNIX/X11

DISTNAME=	t1lib-5.1.2
CATEGORIES=	devel textproc
MASTER_SITES=	${MASTER_SITE_SUNSITE:=libs/graphics/}
REVISION=	0

SHARED_LIBS=	t1	6.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2 / GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/ac-tools
CONFIGURE_ARGS=	--without-x

NO_TEST=	Yes

ALL_TARGET=	without_doc

.include <bsd.port.mk>
