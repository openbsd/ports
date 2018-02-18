# $OpenBSD: Makefile,v 1.36 2018/02/18 11:24:57 jsing Exp $

COMMENT=	multi-format archive and compression library

DISTNAME=	libarchive-3.3.2
REVISION=	0
SHARED_LIBS=	archive		10.1	# 16.2
CATEGORIES=	archivers
HOMEPAGE=	https://www.libarchive.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://www.libarchive.org/downloads/

WANTLIB=	bz2 c crypto expat iconv lz4 lzma pthread z
LIB_DEPENDS=	archivers/bzip2 \
		archivers/lz4 \
		archivers/xz \
		converters/libiconv

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--without-nettle	# prefer OpenSSL
CONFIGURE_ARGS+=--without-xml2		# expat suffices
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
# Do not pick up headers from e2fsprogs
CONFIGURE_ENV+=	ac_cv_header_ext2fs_ext2_fs_h=no

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

# Note: Numerous regression tests fail due to locale issues

.include <bsd.port.mk>
