# $OpenBSD: Makefile,v 1.1.1.1 2010/10/10 17:39:06 steven Exp $

ONLY_FOR_ARCHS = ${GCC4_ARCHS}
SYSV =		4.2.1

COMMENT-main =	GNU fortran 77 and fortran 95 compiler
COMMENT-lib =	GNU fortran library

V =		4.2.1
PKGNAME =	gfortran-$V
PKGNAME-main =	gfortran-$V
PKGNAME-lib =	libgfortran-$V
SHARED_LIBS =	gfortran	2.0

CATEGORIES =	lang math

PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_CDROM =Yes

HOMEPAGE =	http://gcc.gnu.org/wiki/GFortran

CONFIG =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS +=	CONFIG V

MASTER_SITE_GCC += ftp://gcc.gnu.org/pub/gcc/
MASTER_SITE_GCC += ftp://ftp.uvsq.fr/pub/gcc/
MASTER_SITE_GCC += ftp://gd.tuwien.ac.at/gnu/gcc/
MASTER_SITE_GCC += ftp://gd.tuwien.ac.at/gnu/gcc/
MASTER_SITE_GCC += ftp://ftp.fu-berlin.de/unix/languages/gcc/
MASTER_SITE_GCC += ftp://ftp.gwdg.de/pub/linux/gcc/
MASTER_SITE_GCC += ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/gcc.gnu.org/pub/gcc/
MASTER_SITE_GCC += ftp://ftp.sunet.se/pub/gnu/gcc/
MASTER_SITE_GCC += ftp://ftp.ntua.gr/pub/gnu/gcc/
MASTER_SITE_GCC += ftp://ftp.nluug.nl/pub/languages/gcc/
MASTER_SITE_GCC += ftp://ftp.dti.ad.jp/pub/lang/gcc/
MASTER_SITE_GCC += ftp://sunsite.icm.edu.pl/pub/programming/egcs/

MASTER_SITES =	${MASTER_SITE_GCC:=releases/gcc-$V/}

DISTNAME =   	gcc-$V
DISTFILES =	${DISTNAME}.tar.bz2
DIST_SUBDIR =	gcc

USE_LIBTOOL =	Yes
USE_GMAKE =	Yes

MULTI_PACKAGES =	-main -lib

MODULES =		converters/libiconv

WANTLIB-main =		c iberty gmp
LIB_DEPENDS-main =	mpfr::devel/mpfr \
			${MODLIBICONV_LIB_DEPENDS}
LIB_DEPENDS-lib =
RUN_DEPENDS-main =	::${BASE_PKGPATH},-lib

REGRESS_DEPENDS = 	::devel/dejagnu \
			::devel/autogen

BUILD_DEPENDS += :bison-*:devel/bison

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

SEPARATE_BUILD = simple

.if ${MACHINE_ARCH} == "amd64"
PKG_ARGS += -DPIC=1
.else
PKG_ARGS += -DPIC=0
.endif

post-install:
	ln -sf /usr/lib/gcc-lib/${CONFIG}/${SYSV}/libgcc.a ${PREFIX}/lib/gcc/${CONFIG}/$V/libgcc.a
	ln -sf /usr/lib/gcc-lib/${CONFIG}/${SYSV}/cc1 ${PREFIX}/libexec/gcc/${CONFIG}/$V/cc1
	mandoc ${WRKBUILD}/gcc/doc/gfortran.1 >${PREFIX}/man/cat1/gfortran.0

.include <bsd.port.mk>
