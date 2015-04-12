# $OpenBSD: Makefile,v 1.49 2015/04/12 20:21:57 naddy Exp $

COMMENT=	character set conversion library

DISTNAME=	libiconv-1.14
REVISION=	3
CATEGORIES=	converters devel
MASTER_SITES=	${MASTER_SITE_GNU:=libiconv/}

SHARED_LIBS=	charset		1.1 \
		iconv		6.0

HOMEPAGE=	https://www.gnu.org/software/libiconv/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2 and GPLv3
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux ${WRKSRC}/libcharset/build-aux
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--disable-nls \
		--enable-extra-encodings \
		--enable-static

.include <bsd.port.mk>
