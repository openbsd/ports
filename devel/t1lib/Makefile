# $OpenBSD: Makefile,v 1.25 2010/11/15 19:46:09 espie Exp $

COMMENT=	Type 1 rasterizer library for UNIX/X11

DISTNAME=	t1lib-5.1.0
REVISION =	2
CATEGORIES=	devel textproc
MASTER_SITES=	ftp://ftp.foolabs.com/pub/xpdf/ \
		${MASTER_SITE_BACKUP}

SHARED_LIBS=	t1	6.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2 / GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/ac-tools
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --without-x

NO_REGRESS=	Yes

ALL_TARGET=	without_doc

.include <bsd.port.mk>
