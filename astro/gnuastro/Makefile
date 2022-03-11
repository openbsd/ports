COMMENT =	GNU Astronomy Utilities
DISTNAME =	gnuastro-0.15
CATEGORIES =	astro

SHARED_LIBS +=	gnuastro                  2.1 # 13.0

HOMEPAGE =	https://www.gnu.org/software/gnuastro/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += bz2 c cfitsio crypto curl git2 gsl gslcblas jpeg lzma
WANTLIB += m nghttp2 pcre pcreposix pthread ssh2 ssl tiff wcs
WANTLIB += z zstd

MASTER_SITES =	${MASTER_SITE_GNU:=gnuastro/}

# Claimed to be too old; uses it anyway.
BUILD_DEPENDS =	print/ghostscript/gnu

LIB_DEPENDS =	archivers/bzip2 \
		archivers/zstd \
		astro/wcslib \
		devel/gsl \
		devel/libgit2/libgit2 \
		graphics/jpeg \
		graphics/tiff \
		security/libssh2

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/examples/gnuastro"

# Move bash completion file to the appropriate directory.
# Also, rename it to something more identifiable.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${PREFIX}/share/gnuastro/completion.bash \
		${PREFIX}/share/bash-completion/completions/gnuastro
	rm -rf ${PREFIX}/share/gnuastro

.include <bsd.port.mk>
