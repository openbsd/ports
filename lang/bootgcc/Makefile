# $OpenBSD: Makefile,v 1.4 2022/02/26 22:59:45 naddy Exp $

ONLY_FOR_ARCHS = ${GCC4_ARCHS}

DPB_PROPERTIES = parallel

V = 8.4.0
FULL_VERSION = $V
FULL_PKGVERSION = $V
REVISION = 2

COMMENT =	GNU Compiler Collection; bootstrap package
PKGNAME =	bootgcc-${FULL_PKGVERSION}

CATEGORIES =	lang

MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>

DISTNAME =   	gcc-${FULL_VERSION}
EXTRACT_SUFX =	.tar.xz
DIST_SUBDIR =	gcc
CONFIG =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS +=	CONFIG V

# GPLv3+
PERMIT_PACKAGE =Yes

BUILD_DEPENDS +=	devel/bison

MASTER_SITES =	${MASTER_SITE_GCC:=releases/gcc-$(FULL_VERSION)/}

LANGS = c,c++

CONFIGURE_STYLE =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/gcc

EXTRA_ENV += am_cv_func_iconv=no
EXTRA_ENV += ac_cv_prog_M4=/usr/bin/m4
EXTRA_ENV += ac_cv_header_magic_h=no
EXTRA_ENV += lt_cv_path_SED=/usr/bin/sed
EXTRA_ENV += STRIP=/usr/bin/strip
MAKE_FLAGS +=	 ac_cv_path_mkdir=/bin/mkdir

CONFIGURE_ENV += ${EXTRA_ENV}
MAKE_ENV += ${EXTRA_ENV}

# Note: the configure target passes CFLAGS to the configure script anyways.

CFLAGS = -O2 -g

PREFIX = ${LOCALBASE}/bootstrap-gcc

CONFIGURE_ARGS += \
	--verbose \
	--disable-nls  \
	--with-system-zlib \
	--disable-libmudflap \
	--disable-libgomp \
	--disable-libssp \
	--disable-tls \
	--with-gnu-ld \
	--with-gnu-as \
	--enable-threads=posix \
	--enable-wchar_t \
	--with-gmp="${LOCALBASE}" \
	--enable-languages=${LANGS} \
	--disable-libstdcxx-pch \
	--enable-default-ssp \
	--enable-default-pie \
	--without-isl \
	--disable-shared \
	--disable-libatomic \
	--disable-libitm \
	--disable-libquadmath \
	--disable-libcc1 \
	--disable-lto \
	--disable-plugin \
	--disable-gcov

SEPARATE_BUILD = Yes

USE_GMAKE = yes

ALL_TARGET = bootstrap2

MAKE_FLAGS += libstdc___la_LDFLAGS='-version-info 31:0:0 -lm'

WANTLIB =		c gmp m mpc mpfr z

LIB_DEPENDS +=		devel/gmp,no_cxx,bootstrap \
			devel/mpfr \
			devel/libmpc

.if ${MACHINE_ARCH:Mamd64}
CONFIG = x86_64-unknown-openbsd${OSREV}
.endif

post-patch:
	touch ${WRKSRC}/libversions

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include-fixed
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/libgcc.a
	rm -rf ${PREFIX}/{info,man,share}

.include <bsd.port.mk>
