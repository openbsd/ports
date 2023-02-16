COMMENT =		purely functional package manager for Unix
DISTNAME =		nix-2.3.16
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		sysutils

LIBVER =		0.0
.for _lib in expr main store util
SHARED_LIBS +=		nix${_lib}	${LIBVER}	# 2.3.16
.endfor

HOMEPAGE =		https://nixos.org/nix/manual

MAINAINER =		Aaron Bieber <abieber@openbsd.org> \
			Klemens Nanni <kn@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_context-mt boost_system boost_thread-mt
WANTLIB += brotlidec brotlienc bz2 c crypto curl lzma m readline
WANTLIB += sodium sqlite3

MASTER_SITES =		https://nixos.org/releases/nix/${DISTNAME}/

# C++17
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		archivers/gtar \
			shells/bash

LIB_DEPENDS =		archivers/brotli \
			archivers/bzip2 \
			archivers/xz \
			databases/sqlite3 \
			devel/boost \
			devel/boost,-md \
			net/curl \
			security/libsodium

RUN_DEPENDS =		archivers/gtar \
			shells/bash

TEST_DEPENDS =		${PKGPATH} \
			misc/findutils \
			textproc/gdiff

# Bash specific code using `declare' for associative arrays:
# ./configure[7906]: syntax error: `(' unexpected
CONFIGURE_SCRIPT =	${LOCALBASE}/bin/bash ./configure
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			EDITLINE_CFLAGS="-I/usr/include/readline -DREADLINE" \
			EDITLINE_LIBS="-lreadline"

USE_GMAKE =		Yes
MAKE_FLAGS =		V=1 \
			SO_EXT=so.${LIBVER}

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/nix"

# amd64: 12 out of 57 tests failed
TEST_TARGET =		installcheck

# TMPDIR is picked up to construct TEST_ROOT in ${WRKSRC}/tests/common.sh.in
# with this harcoded subdirectory
TESTTMP =		${WRKDIR}
TEST_ROOT =		${TESTTMP}/nix-test
TEST_ENV =		TMPDIR=${TESTTMP}

pre-test:
	mkdir -p ${TEST_ROOT}
	# post-build-hook: xargs: unknown option -- d
	ln -sf ${LOCALBASE}/bin/gxargs ${WRKDIR}/bin/xargs
	# Tracing expression 'builtins.tryEval (throw "example")'diff: unknown option -- B
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

.include <bsd.port.mk>
