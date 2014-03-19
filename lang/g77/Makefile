# $OpenBSD: Makefile,v 1.28 2014/03/19 13:53:29 jasper Exp $

V =			3.3.6
PKGNAME =		g77-$V
REVISION =		5
EPOCH =			1
DISTFILES = 		g77-openbsd-3.3.6.tgz

CONFIG = 		${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS += 		CONFIG V
SYSV =			4.2.1
SYSLIBPATH =		 `cc -v 2>&1| sed -n -e '/gcc-lib/s%^[^/]*\(/.*\)/[^/]*%\1%p'`
LIBDIR =		${PREFIX}/lib/gcc-lib/${CONFIG}/$V

.if ${MACHINE_ARCH} == "m88k"
PKG_ARGS += -DPIC=1
.else
PKG_ARGS += -DPIC=0
.endif

COMMENT =		GNU fortran 77 compiler
CATEGORIES =		lang math
MASTER_SITES =		http://spacehopper.org/mirrors/

PERMIT_PACKAGE_CDROM = 	Yes

RUN_DEPENDS =		devel/libf2c
TEST_DEPENDS =		devel/dejagnu \
			devel/libf2c

WRKDIST =		${WRKDIR}/g77
CONFIGURE_SCRIPT =	${WRKDIST}/gcc/configure

SEPARATE_BUILD = 	Yes
LIBIBERTY_INCLUDES =	${WRKDIST}/libiberty/include

GNUCFLAGS =		${CFLAGS} ${COPTS} -DOPENBSD_NATIVE \
			-I${LIBIBERTY_INCLUDES}

CONFIGURE_STYLE = 	gnu

MAKE_FLAGS = 		CFLAGS="${GNUCFLAGS}" \
			CC="${CC}" LDFLAGS="${LDSTATIC}" \
			DEMANGLER_PROG= \
			DEMANGLE_H= \
			LIBIBERTY_INCLUDES=${LIBIBERTY_INCLUDES} \
			LIBGCC2_INCLUDES=-I${LIBIBERTY_INCLUDES} \
			BUILD_LIBIBERTY=-liberty \
			LIBIBERTY=-liberty \
			HOST_LIBDEPS= \
			LIBDEPS= \
			build_infodir=. \
			INSTALL_LIBGCC= LIBGCC= \
			COMPILERS=f771 \
			USE_COLLECT2= \
			LANGUAGES=f77

CONFIGURE_ENV = INSTALL_PROGRAM="${INSTALL} ${INSTALL_COPY} ${INSTALL_STRIP}" \
			CPPFLAGS=-I${LIBIBERTY_INCLUDES}

CONFIGURE_ARGS = 	--with-gnu-as --with-gnu-ld \
			--with-local-prefix=${PREFIX} ${CF} \
			--with-gxx-include-dir=dummy \
			-enable-languages='f77' \
			--disable-cpp --disable-nls \
			--enable-__cxa_atexit \

ALL_TARGET = 		all doc
INSTALL_TARGET = 	install-common f77.install-info f77.install-normal

post-install:
	ln -sf ${SYSLIBPATH}/libgcc.a ${LIBDIR}/libgcc.a
.if ${MACHINE_ARCH} == "m68k" || ${MACHINE_ARCH} == "m88k"
	mkdir ${LIBDIR}/fpic
	ln -sf ${SYSLIBPATH}/fpic/libgcc.a ${LIBDIR}/fpic/libgcc.a
	mkdir ${LIBDIR}/fPIC
	ln -sf ${SYSLIBPATH}/fPIC/libgcc.a ${LIBDIR}/fPIC/libgcc.a
.endif
	ln -s ${SYSLIBPATH}/cc1 ${LIBDIR}/cc1
	${INSTALL_MAN} ${WRKBUILD}/f/g77.1 ${PREFIX}/man/man1/g77.1
	cd ${PREFIX}/man/man1 && ln -f g77.1 f77.1
	cd ${PREFIX}/bin && ln -f g77 f77

WANTLIB =		c iberty

pre-test:
	ln -sf ${SYSLIBPATH}/libgcc.a ${WRKBUILD}/libgcc.a
	ln -s ${SYSLIBPATH}/cc1 ${WRKBUILD}/cc1

.include <bsd.port.mk>
