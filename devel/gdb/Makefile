# $OpenBSD: Makefile,v 1.75 2021/10/22 18:30:35 jca Exp $

COMMENT=	GNU debugger
CATEGORIES=	devel

DISTNAME=	gdb-9.2

HOMEPAGE=	https://www.gnu.org/software/gdb/

MAINTAINER=	Pascal Stumpf <pascal@stumpf.co>

# GPLv2 and GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb
EXTRACT_SUFX=	.tar.xz

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gdb

WANTLIB = c curses expat kvm intl m pthread ${MODPY_WANTLIB} ${COMPILER_LIBCXX} util

DEBUG_PACKAGES=	${BUILD_PACKAGES}

# C++11
COMPILER=	base-clang ports-gcc

SEPARATE_BUILD= Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=e \
		--disable-nls \
		--disable-sim \
		--without-gmp \
		--without-guile \
		--without-isl \
		--without-lzma \
		--without-mpc \
		--without-mpfr \
		--with-auto-load-dir=${TRUEPREFIX}/share/gdb/auto-load \
		--enable-target=all \
		--with-python=${MODPY_BIN}

USE_GMAKE=	Yes
MAKE_FLAGS=	V=1 LDFLAGS="${LDFLAGS}"

MODULES +=	lang/python

BUILD_DEPENDS =	sysutils/xxhash
LIB_DEPENDS +=	${MODPY_LIB_DEPENDS}
TEST_DEPENDS +=	devel/dejagnu

post-install:
	${MODPY_BIN} -m compileall ${PREFIX}/share/gdb/python

.include <bsd.port.mk>
