# $OpenBSD: Makefile,v 1.1.1.1 2020/03/11 14:24:57 tracey Exp $

COMMENT =	gcc for ${CONFIG} cross-development

V =		8.2.0
VERSION =	8.2.0.2019.2
PKGNAME =	${CONFIG}-gcc-${VERSION}

GH_ACCOUNT =	espressif
GH_PROJECT =	gcc
GH_TAGNAME =	esp-2019r2

SUBST_VARS +=	V

WANTLIB =	${COMPILER_LIBCXX} c gmp m mpc mpfr z

COMPILER =	base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	devel/bison \
			devel/${CONFIG}/binutils \
			devel/${CONFIG}/newlib
RUN_DEPENDS =		devel/${CONFIG}/binutils \
			devel/${CONFIG}/newlib
LIB_DEPENDS =		devel/gmp \
			devel/mpfr \
			devel/libmpc

YACC =			bison

CONFIGURE_ARGS +=	--enable-languages=c,c++ \
			--with-headers=${LOCALBASE}/${CONFIG}/include  \
			--with-local-prefix=${LOCALBASE}/${CONFIG} \
			--with-gmp=${LOCALBASE} \
			--with-newlib \
			--with-system-zlib \
			--disable-thread \
			--disable-shared \
			--disable-__cxa_atexit \
			--disable-libgomp \
			--disable-libmudflap \
			--disable-libmpx \
			--disable-libssp \
			--disable-libquadmath \
			--disable-libquadmath-support \
			--disable-lto \
			--disable-libstdcxx-verbose \
			--enable-cxx-flags="-fno-rtti -ffunction-sections -mlongcalls -mtext-section-literals" \
			--enable-target-optspace \
			--without-long-double-128 \
			--enable-gcov-custom-rtio \
			--enable-libstdcxx-time=yes

ALL_TARGET =		all-gcc all-target-libgcc all-target-libstdc++-v3
INSTALL_TARGET =	install-gcc install-target-libgcc \
			install-target-libstdc++-v3

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/8.2.0/

.include <bsd.port.mk>
