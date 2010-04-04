# $OpenBSD: Makefile,v 1.12 2010/04/04 15:02:05 naddy Exp $

COMMENT=	library for reading and writing streaming archives

DISTNAME=	libarchive-2.7.1
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=  archive              5.0      # .9.1
CATEGORIES=	archivers
HOMEPAGE=	http://code.google.com/p/libarchive/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://libarchive.googlecode.com/files/

WANTLIB=	c crypto z
LIB_DEPENDS=	bz2.>=10::archivers/bzip2 \
		lzma.>=0::archivers/xz

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-lzmadec	# old LZMA utils
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

.include <bsd.port.mk>
