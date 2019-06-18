# $OpenBSD: Makefile,v 1.38 2019/06/18 20:30:01 naddy Exp $

COMMENT=	multi-format archive and compression library

V=		3.4.0
DISTNAME=	libarchive-$V
SHARED_LIBS=	archive		10.3	# 17.0
CATEGORIES=	archivers
HOMEPAGE=	https://www.libarchive.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/libarchive/libarchive/releases/download/v$V/

WANTLIB=	b2 bz2 c crypto expat iconv lz4 lzma pthread z zstd
LIB_DEPENDS=	archivers/bzip2 \
		archivers/lz4 \
		archivers/xz \
		archivers/zstd \
		converters/libiconv \
		security/libb2

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
