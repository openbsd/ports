# $OpenBSD: Makefile,v 1.32 2009/04/24 18:56:49 naddy Exp $

COMMENT=	character set conversion library

DISTNAME=	libiconv-1.13
CATEGORIES=	converters devel
MASTER_SITES=	${MASTER_SITE_GNU:=libiconv/}

SHARED_LIBS=	charset		1.0 \
		iconv		6.0

HOMEPAGE=	http://www.gnu.org/software/libiconv/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2, GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c

BUILD_DEPENDS=	::devel/gperf

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux ${WRKSRC}/libcharset/build-aux
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--disable-nls \
		--enable-extra-encodings \
		--enable-static
CONFIGURE_ENV=	am_cv_proto_iconv='extern size_t iconv (iconv_t cd, char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);'
MAKE_FLAGS=	INSTALL_DATA=cp

pre-configure:
	@cd ${WRKSRC}; \
		${SETENV} ${CONFIGURE_ENV} ${MAKE} -f Makefile.devel lib/aliases.h

.include <bsd.port.mk>
