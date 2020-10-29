# $OpenBSD: Makefile,v 1.4 2020/10/29 14:10:52 tracey Exp $

COMMENT =	bootstrap compiler for ${CONFIG} cross-development

V =		8.4.0
VERSION =	8.4.0.2020.3
PKGNAME =	${CONFIG}-gcc-bootstrap-${VERSION}

GH_ACCOUNT =	espressif
GH_PROJECT =	gcc
GH_TAGNAME =	esp-2020r3

SUBST_VARS +=	V

WANTLIB =	${COMPILER_LIBCXX} c gmp m mpc mpfr

BUILD_DEPENDS +=	devel/bison \
			devel/${CONFIG}/binutils
RUN_DEPENDS =		devel/${CONFIG}/binutils
LIB_DEPENDS =		devel/gmp \
			devel/mpfr \
			devel/libmpc

YACC =		bison
DEBUG_PACKAGES =	${BUILD_PACKAGES}

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
