# $OpenBSD: Makefile,v 1.47 2013/11/09 23:19:02 naddy Exp $

COMMENT=	character set conversion library

DISTNAME=	libiconv-1.14
REVISION=	1
CATEGORIES=	converters devel
MASTER_SITES=	${MASTER_SITE_GNU:=libiconv/}

SHARED_LIBS=	charset		1.1 \
		iconv		6.0

HOMEPAGE=	https://www.gnu.org/software/libiconv/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2 and GPLv3
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	c

BUILD_DEPENDS=	devel/gperf

MAKE_FLAGS=	INSTALL_DATA=cp

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux ${WRKSRC}/libcharset/build-aux
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--disable-nls \
		--enable-extra-encodings \
		--enable-static

pre-configure:
	@cd ${WRKSRC}; \
		${SETENV} ${CONFIGURE_ENV} ${MAKE} -f Makefile.devel lib/aliases.h

.include <bsd.port.mk>
