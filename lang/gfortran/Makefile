# $OpenBSD: Makefile,v 1.27 2014/07/16 12:35:23 espie Exp $

ONLY_FOR_ARCHS = ${GCC4_ARCHS}
SYSV =		4.2.1

BROKEN-hppa =	port not contributed
COMMENT-main =	GNU fortran 77 and fortran 95 compiler
COMMENT-lib =	GNU fortran library

V =		4.2.1
PKGNAME =	gfortran-$V
PKGNAME-main =	gfortran-$V
PKGNAME-lib =	libgfortran-$V
SHARED_LIBS =	gfortran	2.0

REVISION = 12

CATEGORIES =	lang math

PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://gcc.gnu.org/wiki/GFortran

CONFIG =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS +=	CONFIG V

MASTER_SITES =	${MASTER_SITE_GCC:=releases/gcc-$V/}

DISTNAME =   	gcc-$V
DISTFILES =	${DISTNAME}.tar.bz2
DIST_SUBDIR =	gcc

USE_GMAKE =	Yes

MULTI_PACKAGES =	-main -lib

MODULES =		converters/libiconv

WANTLIB-main =		${MODLIBICONV_WANTLIB} c iberty gmp mpfr
LIB_DEPENDS-main =	devel/mpfr \
			${MODLIBICONV_LIB_DEPENDS}
WANTLIB-lib =
LIB_DEPENDS-lib =
RUN_DEPENDS-main =	${BASE_PKGPATH},-lib

TEST_DEPENDS = 	devel/dejagnu \
			devel/autogen

BUILD_DEPENDS += devel/bison

post-extract:
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> ${WRKSRC}/libversions
.endfor

CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/gcc

LANGS = fortran
CONFIGURE_ENV += am_cv_func_iconv=no
CONFIGURE_ENV += ac_cv_prog_CONFIGURED_M4=/usr/bin/m4
CONFIGURE_ENV += ac_cv_prog_GFORTRAN_FOR_TARGET=no

MAKE_FLAGS =	LIBIBERTY_INCLUDES=${LIBIBERTY_INCLUDES} \
		BUILD_LIBIBERTY=-liberty \
		LIBIBERTY=-liberty \
		LIBDEPS= \
		INSTALL_LIBGCC= LIBGCC= USE_COLLECT2= \
		COMPILERS=f951 \
		LANGUAGES=fortran

# Note: the configure target passes CFLAGS to the configure script anyways.
CFLAGS = -O2

CONFIGURE_ARGS += \
	--verbose \
	--disable-nls  \
	--disable-checking \
	--with-system-zlib \
	--disable-libmudflap \
	--disable-libgomp \
	--disable-tls \
	--with-as=/usr/bin/as \
	--with-ld=/usr/bin/ld \
	--with-gnu-ld \
	--with-gnu-as \
	--enable-threads=posix \
	--enable-wchar_t \
	--enable-languages=${LANGS} \
	--with-gmp=${LOCALBASE} \
	--with-mpfr=${LOCALBASE} \
	--disable-libssp \
	--disable-bootstrap \
	--with-gnu-as \
	--with-gnu-ld \
	--disable-cpp \
	${CONFIGURE_SHARED}

SEPARATE_BUILD = Yes

.if ${MACHINE_ARCH} == "amd64"
PKG_ARGS += -DPIC=1
.else
PKG_ARGS += -DPIC=0
.endif

post-install:
	ln -sf /usr/lib/gcc-lib/${CONFIG}/${SYSV}/libgcc.a ${PREFIX}/lib/gcc/${CONFIG}/$V/libgcc.a
	ln -sf /usr/lib/gcc-lib/${CONFIG}/${SYSV}/cc1 ${PREFIX}/libexec/gcc/${CONFIG}/$V/cc1
	${INSTALL_MAN} ${WRKBUILD}/gcc/doc/gfortran.1 ${PREFIX}/man/man1/gfortran.1

.include <bsd.port.mk>
