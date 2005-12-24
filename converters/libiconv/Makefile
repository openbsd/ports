# $OpenBSD: Makefile,v 1.24 2005/12/24 16:11:52 espie Exp $

COMMENT=	"character set conversion library"

DISTNAME=	libiconv-1.9.2
PKGNAME=	${DISTNAME}p3
CATEGORIES=	converters devel
MASTER_SITES=	${MASTER_SITE_GNU:=libiconv/}
SHARED_LIBS=	charset	1.0 \
		iconv	4.0
MODGNU_SHARED_LIBS=	charset	'-no-undefined' \
			iconv	'-no-undefined'

HOMEPAGE=	http://www.gnu.org/software/libiconv/

MAINTAINER=	Brad Smith <brad@openbsd.org>

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

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ENV=	LIBTOOL_FLAGS="-fPIC -DPIC"
.endif
