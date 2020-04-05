# $OpenBSD: Makefile,v 1.3 2020/04/05 21:55:01 tracey Exp $

COMMENT =	gcc for ${CONFIG} cross-development

VERSION =	5.2.0
DISTNAME =	gcc-${VERSION}
PKGNAME =	${CONFIG}-gcc-${VERSION}

GH_ACCOUNT =	jcmvbkbc
GH_PROJECT =	gcc-xtensa
GH_COMMIT =	4a86aa4eb36ae95cf42f99251965f4a3a8f45f88

WANTLIB =	${COMPILER_LIBCXX} c gmp m mpc mpfr

SUBST_VARS +=	VERSION

COMPILER =	base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	devel/bison \
			devel/${CONFIG}/binutils \
			devel/${CONFIG}/newlib
RUN_DEPENDS =		devel/${CONFIG}/binutils \
			devel/${CONFIG}/newlib
LIB_DEPENDS =		devel/mpfr \
			devel/libmpc

# cope with user settings in /etc/mk.conf
MAKE_FLAGS =	LANGUAGES="c c++" CFLAGS="-I${LOCALBASE}/include"
MAKE_ENV =	MACHINE_ARCH=${CONFIG}
MAKE_GXX =	Yes
MAKE_FORTRAN =	No
MAKE_OBJC =	No
MAKE_JAVA =	No
MAKE_ADA =	No

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
YACC =			bison

CONFIGURE_ARGS +=	--with-headers=${LOCALBASE}/${CONFIG}/include  \
			--with-local-prefix=${LOCALBASE}/${CONFIG} \
			--with-as="${LOCALBASE}/bin/${CONFIG}-as" \
			--with-ld="${LOCALBASE}/bin/${CONFIG}-ld" \
			--with-newlib \
			--enable-threads=no \
			--disable-shared \
			--disable-__cxa_atexit \
			--enable-cxx-flags="-fno-rtti -ffunction-sections -mlongcalls -mtext-section-literals" \
			--disable-lto \
			--enable-target-optspace \
			--without-long-double-128 \
			--disable-libgomp \
			--disable-libmudflap \
			--disable-libssp \
			--disable-libquadmath \
			--disable-libquadmath-support \
			--disable-nls \
			--disable-multilib \
			--enable-languages=c,c++ \
			--disable-option-checking
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV +=	MACHINE_ARCH=${CONFIG}

ALL_TARGET =		all-gcc all-target-libgcc all-target-libstdc++-v3
INSTALL_TARGET =	install-gcc install-target-libgcc install-target-libstdc++-v3

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
