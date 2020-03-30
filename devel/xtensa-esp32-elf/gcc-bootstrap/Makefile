# $OpenBSD: Makefile,v 1.3 2020/03/30 19:24:41 tracey Exp $

COMMENT =	bootstrap compiler for ${CONFIG} cross-development

V =		8.2.0
VERSION =	8.2.0.2019.2
PKGNAME =	${CONFIG}-gcc-bootstrap-${VERSION}

GH_ACCOUNT =	espressif
GH_PROJECT =	gcc
GH_TAGNAME =	esp-2019r2

SUBST_VARS +=	V

WANTLIB =	${COMPILER_LIBCXX} c gmp m mpc mpfr

COMPILER =	base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	devel/bison \
			devel/${CONFIG}/binutils
RUN_DEPENDS =		devel/${CONFIG}/binutils
LIB_DEPENDS =		devel/gmp \
			devel/mpfr \
			devel/libmpc

YACC =		bison

CONFIGURE_ARGS +=	--exec-prefix=${LOCALBASE}/${CONFIG}/bootstrap \
			--with-local-prefix=${LOCALBASE}/${CONFIG} \
			--with-as="${LOCALBASE}/bin/${CONFIG}-as" \
			--with-ld="${LOCALBASE}/bin/${CONFIG}-ld" \
			--with-gmp=${LOCALBASE} \
			--without-headers \
			--with-newlib \
			--disable-threads \
			--disable-shared \
			--disable-__cxa_atexit \
			--disable-libgomp \
			--disable-libmudflap \
			--disable-libmpx \
			--disable-libssp \
			--disable-libquadmath \
			--disable-libquadmath-support \
			--disable-lto \
			--without-long-double-128 \
			--enable-target-optspace \
			--enable-languages=c

ALL_TARGET =		all-gcc all-target-libgcc
INSTALL_TARGET =	install-gcc install-target-libgcc

.include <bsd.port.mk>
