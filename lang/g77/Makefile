# $OpenBSD: Makefile,v 1.6 2010/08/01 08:45:16 eric Exp $

.include <bsd.own.mk>
.  if ${COMPILER_VERSION:L:Mgcc4*}
SYSV=			4.2.1
.  else
SYSV=			3.3.5
.  endif

NOT_FOR_ARCHES =	${GCC2_ARCHS}

V =			3.3.5
PKGNAME =		g77-$V
REVISION =		4
DISTFILES = 		g77-openbsd.tgz

CONFIG = 		${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS += 		CONFIG V

COMMENT =		GNU fortran 77 compiler
CATEGORIES =		lang math
MASTER_SITES =		http://spacehopper.org/mirrors/

PERMIT_DISTFILES_CDROM = Yes
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_FTP =	Yes

WRKDIST =		${WRKDIR}/g77
.if ${COMPILER_VERSION:L:Mgcc4*}
PATCH_LIST=		gcc4-* patch-*
.endif
CONFIGURE_SCRIPT =	${WRKDIST}/gcc/configure

SEPARATE_BUILD = 	Yes
LIBIBERTY_INCLUDES =	${WRKDIST}/libiberty/include

GNUCFLAGS =		${CFLAGS} ${COPTS} -DOPENBSD_NATIVE \
			-I${LIBIBERTY_INCLUDES}

VAXHOST_CFLAGS =	-DIN_GCC -DOPENBSD_NATIVE -DHAVE_CONFIG_H -O0
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

.if ${MACHINE_ARCH} == "vax"
MAKE_FLAGS +=		HOST_CFLAGS="${VAXHOST_CFLAGS}"
.endif

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
	ln -sf /usr/lib/gcc-lib/${CONFIG}/${SYSV}/libgcc.a ${PREFIX}/lib/gcc-lib/${CONFIG}/$V/libgcc.a
	ln -s /usr/lib/gcc-lib/${CONFIG}/${SYSV}/cc1 ${PREFIX}/lib/gcc-lib/${CONFIG}/$V/cc1
	mandoc ${WRKBUILD}/f/g77.1 >${PREFIX}/man/cat1/g77.0
	cd ${PREFIX}/man/cat1 && ln -f g77.0 f77.0
	cd ${PREFIX}/bin && ln -f g77 f77

WANTLIB =		c iberty

.include <bsd.port.mk>
