# $OpenBSD: Makefile,v 1.31 2008/06/18 19:50:31 naddy Exp $

COMMENT=	character set conversion library

DISTNAME=	libiconv-1.12
CATEGORIES=	converters devel
MASTER_SITES=	${MASTER_SITE_GNU:=libiconv/}
SHARED_LIBS +=	charset              1.0      # .1.0
SHARED_LIBS +=	iconv                5.0      # .6.0

HOMEPAGE=	http://www.gnu.org/software/libiconv/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPL, GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c
BUILD_DEPENDS=	::devel/gperf

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux ${WRKSRC}/libcharset/build-aux
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--enable-static \
		--enable-extra-encodings \
		--disable-nls
CONFIGURE_ENV=	am_cv_proto_iconv='extern size_t iconv (iconv_t cd, char * *inbuf, size_t *inbytesleft, char * *outbuf, size_t *outbytesleft);'
MAKE_FLAGS=	INSTALL_DATA=cp

pre-configure:
	@cd ${WRKSRC}; \
		${SETENV} ${CONFIGURE_ENV} make -f Makefile.devel lib/aliases.h

.include <bsd.port.mk>
