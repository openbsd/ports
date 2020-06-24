# $OpenBSD: Makefile,v 1.1.1.1 2020/06/24 19:26:25 bcallah Exp $

COMMENT =	GNU Astronomy Utilities
DISTNAME =	gnuastro-0.12
CATEGORIES =	astro

SHARED_LIBS +=	gnuastro                  0.0 # 10.0

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c cfitsio crypto curl git2 gsl gslcblas jpeg lzma m
WANTLIB += nghttp2 pthread ssh2 ssl tiff wcs z zstd

MASTER_SITES =	${MASTER_SITE_GNU:=gnuastro/}

# Claimed to be too old; uses it anyway.
BUILD_DEPENDS =	print/ghostscript/gnu

LIB_DEPENDS =	archivers/zstd \
		astro/wcslib \
		devel/gsl \
		devel/libgit2/libgit2 \
		graphics/jpeg \
		graphics/tiff \
		security/libssh2

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/examples/gnuastro"

.include <bsd.port.mk>
