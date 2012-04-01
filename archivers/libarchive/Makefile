# $OpenBSD: Makefile,v 1.21 2012/04/01 10:50:47 naddy Exp $

COMMENT=	multi-format archive and compression library

DISTNAME=	libarchive-3.0.3
SHARED_LIBS=	archive		7.0	# .12.3
CATEGORIES=	archivers
HOMEPAGE=	http://libarchive.github.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	https://github.com/downloads/libarchive/libarchive/

MODULES=	converters/libiconv
WANTLIB=	bz2 c expat lzma z
LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--without-lzmadec	# old LZMA utils
CONFIGURE_ARGS+=--without-nettle	# prefer OpenSSL
CONFIGURE_ARGS+=--without-xml2		# expat suffices
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

# Regression tests:
# libarchive/test_entry fails due to lacking locale/widechar support

.include <bsd.port.mk>
