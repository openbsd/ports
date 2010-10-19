# $OpenBSD: Makefile,v 1.17 2010/10/19 21:04:52 naddy Exp $

COMMENT=	library for reading and writing streaming archives

DISTNAME=	libarchive-2.8.4
SHARED_LIBS=	archive		6.0	# .10.3
CATEGORIES=	archivers
HOMEPAGE=	http://code.google.com/p/libarchive/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://libarchive.googlecode.com/files/

WANTLIB=	c expat z bz2.>=10 lzma.>=0
LIB_DEPENDS=	::archivers/bzip2 \
		::archivers/xz

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--without-lzmadec	# old LZMA utils
CONFIGURE_ARGS+=--without-xml2		# expat suffices
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

# Regression tests:
# libarchive/test_entry fails due to lacking locale/widechar support

.include <bsd.port.mk>
