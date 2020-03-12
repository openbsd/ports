# $OpenBSD: Makefile,v 1.1.1.1 2020/03/12 15:05:20 tracey Exp $

COMMENT =	bootstrap compiler for ${CONFIG} cross-development

VERSION =	4.8.5
DISTNAME =	gcc-${VERSION}
PKGNAME =	${CONFIG}-gcc-bootstrap-${VERSION}

GH_ACCOUNT =	jcmvbkbc
GH_PROJECT =	gcc-xtensa
GH_COMMIT =	81033786686bcee08e68583ea8fb3408bdff034a

WANTLIB =	${COMPILER_LIBCXX} c gmp m mpc mpfr

SUBST_VARS +=	VERSION

COMPILER=	base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	devel/bison \
			devel/${CONFIG}/binutils
RUN_DEPENDS =		devel/${CONFIG}/binutils
LIB_DEPENDS =		devel/mpfr \
			devel/libmpc

# cope with user settings in /etc/mk.conf
MAKE_FLAGS =	LANGUAGES="c" CFLAGS="-I${LOCALBASE}/include"
MAKE_ENV =	MACHINE_ARCH=${CONFIG}
MAKE_GXX =	No
MAKE_FORTRAN =	No
MAKE_OBJC =	No
MAKE_JAVA =	No
MAKE_ADA =	No

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
YACC =			bison

CONFIGURE_ARGS +=	--exec-prefix=${LOCALBASE}/${CONFIG}/bootstrap \
			--with-local-prefix=${LOCALBASE}/${CONFIG} \
			--with-as="${LOCALBASE}/bin/${CONFIG}-as" \
			--with-ld="${LOCALBASE}/bin/${CONFIG}-ld" \
			--with-newlib \
			--enable-threads=no \
			--disable-shared \
			--disable-__cxa_atexit \
			--disable-libgomp \
			--disable-libmudflap \
			--disable-libmpx \
			--disable-libssp \
			--disable-libquadmath \
			--disable-libquadmath-support \
			--disable-lto \
			--enable-target-optspace \
			--without-long-double-128 \
			--disable-nls \
			--disable-multilib \
			--enable-languages=c \
			--disable-option-checking
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

ALL_TARGET =		all-gcc all-target-libgcc
INSTALL_TARGET =	install-gcc install-target-libgcc

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
