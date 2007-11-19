# $OpenBSD: Makefile,v 1.28 2007/11/19 13:12:57 sthen Exp $

COMMENT=	character set conversion library

DISTNAME=	libiconv-1.9.2
PKGNAME=	${DISTNAME}p5
CATEGORIES=	converters devel
MASTER_SITES=	${MASTER_SITE_GNU:=libiconv/}
SHARED_LIBS +=	charset              1.0      # .1.0
SHARED_LIBS +=	iconv                4.0      # .4.0
BUILD_DEPENDS=	::devel/gperf

HOMEPAGE=	http://www.gnu.org/software/libiconv/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=2.57
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autoconf ${WRKSRC}/libcharset/autoconf
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --enable-extra-encodings \
		 --disable-nls \
		 --mandir=${PREFIX}/man

USE_LIBTOOL=Yes

pre-configure:
	@cd ${WRKSRC}; make -f Makefile.devel lib/aliases.h

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ENV=	LIBTOOL_FLAGS="-fPIC -DPIC"
.endif

