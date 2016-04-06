# $OpenBSD: Makefile,v 1.29 2016/04/06 14:16:58 naddy Exp $

COMMENT=	multi-format archive and compression library

DISTNAME=	libarchive-3.1.2
REVISION=	0
SHARED_LIBS=	archive		8.2	# 14.2
CATEGORIES=	archivers
HOMEPAGE=	http://www.libarchive.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.libarchive.org/downloads/

WANTLIB=	bz2 c expat iconv lzma lzo2 pthread z
LIB_DEPENDS=	archivers/bzip2 \
		archivers/lzo2 \
		archivers/xz \
		converters/libiconv

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--without-lzmadec	# old LZMA utils
CONFIGURE_ARGS+=--without-nettle	# prefer OpenSSL
CONFIGURE_ARGS+=--without-xml2		# expat suffices
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

# Regression tests known to fail due to locale issues
# (see /tmp/libarchive_test.* for detailed logs):
#
# test_gnutar_filename_encoding
# test_pax_filename_encoding
# test_read_format_cpio_filename
# test_read_format_gtar_filename
# test_read_format_rar_unicode_CP932
# test_read_format_tar_filename
# test_read_format_ustar_filename
# test_read_format_zip_filename
# test_ustar_filename_encoding
# test_zip_filename_encoding

.include <bsd.port.mk>
