# $OpenBSD: Makefile,v 1.52 2019/07/16 21:29:41 sthen Exp $

COMMENT=	character set conversion library

DISTNAME=	libiconv-1.16
CATEGORIES=	converters devel
MASTER_SITES=	${MASTER_SITE_GNU:=libiconv/}
REVISION=	0

SHARED_LIBS=	charset		1.1 \
		iconv		7.0

HOMEPAGE=	https://www.gnu.org/software/libiconv/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2 and GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux ${WRKSRC}/libcharset/build-aux
CONFIGURE_ARGS= --disable-nls \
		--docdir="${PREFIX}/share/doc/libiconv" \
		--enable-extra-encodings \
		--enable-static

.include <bsd.port.mk>
