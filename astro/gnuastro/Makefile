# $OpenBSD: Makefile,v 1.2 2020/10/09 02:36:44 bcallah Exp $

COMMENT =	GNU Astronomy Utilities
DISTNAME =	gnuastro-0.13
CATEGORIES =	astro

SHARED_LIBS +=	gnuastro                  1.0 # 11.0

HOMEPAGE =	https://www.gnu.org/software/gnuastro/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

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
