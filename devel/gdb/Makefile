COMMENT=	GNU debugger
CATEGORIES=	devel

DISTNAME=	gdb-13.2
REVISION=	1

HOMEPAGE=	https://www.gnu.org/software/gdb/

MAINTAINER=	Pascal Stumpf <pascal@stumpf.co>

# GPLv2 and GPLv3
PERMIT_PACKAGE=	Yes

SITES=		${SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb
EXTRACT_SUFX=	.tar.xz

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gdb

WANTLIB += ${MODPY_WANTLIB} ${COMPILER_LIBCXX}
WANTLIB += c curses expat gmp kvm iconv intl m pthread util zstd

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# C++11
COMPILER=	base-clang ports-gcc

SEPARATE_BUILD= Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=e \
		--disable-nls \
		--disable-sim \
		--without-guile \
		--without-isl \
		--without-lzma \
		--without-mpc \
		--without-mpfr \
		--with-libgmp-type=shared \
		--with-auto-load-dir=${TRUEPREFIX}/share/gdb/auto-load \
		--enable-target=all \
		--with-python=${MODPY_BIN}

USE_GMAKE=	Yes
MAKE_FLAGS=	V=1 LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"
# Avoid using malloc replacement for no good reason
MAKE_ENV=	gl_cv_malloc_ptrdiff=yes

MODULES +=	lang/python

BUILD_DEPENDS =	sysutils/xxhash
LIB_DEPENDS +=	${MODPY_LIB_DEPENDS} \
		archivers/zstd \
		devel/gmp,-main
TEST_DEPENDS +=	devel/dejagnu

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/gdb/python

.include <bsd.port.mk>
