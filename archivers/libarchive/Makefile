# $OpenBSD: Makefile,v 1.42 2020/05/30 15:50:38 naddy Exp $

COMMENT=	multi-format archive and compression library

DISTNAME=	libarchive-3.4.3
SHARED_LIBS=	archive		11.1	# 17.3
CATEGORIES=	archivers
HOMEPAGE=	https://www.libarchive.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://www.libarchive.org/downloads/
EXTRACT_SUFX=	.tar.xz

WANTLIB=	b2 bz2 c charset crypto expat iconv lz4 lzma pthread z zstd
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
DEBUG_PACKAGES = ${BUILD_PACKAGES}

# Note: Numerous regression tests fail due to locale issues

.include <bsd.port.mk>
