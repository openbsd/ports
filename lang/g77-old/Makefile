# $OpenBSD: Makefile,v 1.15 2013/07/14 18:00:17 miod Exp $

ONLY_FOR_ARCHS =	${GCC2_ARCHS}

V =			2.95.3
PKGNAME =		g77-$V
REVISION =		8
DISTFILES = 		g77-openbsd-2.95.3.tgz \
			libiberty-includes-openbsd.tgz

CONFIG = 		${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS += 		CONFIG V
SYSV =			2.95.3

COMMENT =		GNU fortran 77 compiler
CATEGORIES =		lang math
MASTER_SITES =		http://spacehopper.org/mirrors/

PERMIT_PACKAGE_CDROM = 	Yes

WRKDIST =		${WRKDIR}/g77
CONFIGURE_SCRIPT =	${WRKDIST}/gcc/configure

SEPARATE_BUILD = 	Yes
LIBIBERTY_INCLUDES =	${WRKDIR}/libiberty/include

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
			LANGUAGES=f77 \
			GCC_FOR_TARGET=gcc \
			LIBGCC1=

FAKE_FLAGS=		prefix=${WRKINST}${TRUEPREFIX} \
			infodir=${WRKINST}${TRUEPREFIX}/info \
			bindir=${WRKINST}${TRUEPREFIX}/bin \
			NO_TARGET_GCC=true

.if ${MACHINE_ARCH} == "vax"
MAKE_FLAGS +=		HOST_CFLAGS="${VAXHOST_CFLAGS} -I${LIBIBERTY_INCLUDES}"
.endif

CONFIGURE_ENV = INSTALL_PROGRAM="${INSTALL} ${INSTALL_COPY} ${INSTALL_STRIP}" \
			CPPFLAGS=-I${LIBIBERTY_INCLUDES}

CONFIGURE_ARGS = 	--with-gnu-as --with-gnu-ld \
			--with-local-prefix=${PREFIX} ${CF} \
			--with-gxx-include-dir=dummy \
			-enable-languages='f77' \
			--disable-cpp --disable-nls \
			--enable-__cxa_atexit

ALL_TARGET = 		all doc
INSTALL_TARGET = 	install-common f77.install-info f77.install-normal

LIBDIR =	${PREFIX}/lib/gcc-lib/${CONFIG}/$V
SYSDIR =	/usr/lib/gcc-lib/${CONFIG}/${SYSV}

.if ${MACHINE_ARCH} == "m68k"
PKG_ARGS += -DPIC=1
.else
PKG_ARGS += -DPIC=0
.endif

post-extract:
	cd ${WRKDIST}/gcc; rm assert.h; ln -sf /usr/include/assert.h
post-patch:
	@cp ${FILESDIR}/gcc_config_vax_openbsdelf.h \
	    ${WRKSRC}/gcc/config/vax/openbsdelf.h
post-install:
	ln -sf ${SYSDIR}/libgcc.a ${LIBDIR}/libgcc.a
	if [ -d ${LIBDIR}/fpic ]; then \
		ln -sf ${SYSDIR}/fpic/libgcc.a ${LIBDIR}/fpic/libgcc.a; \
	fi
	if [ -d ${LIBDIR}/fPIC ]; then \
		ln -sf ${SYSDIR}/fPIC/libgcc.a ${LIBDIR}/fPIC/libgcc.a; \
	fi
	ln -sf ${SYSDIR}/cpp0 ${LIBDIR}/cpp0
	${INSTALL_MAN} ${WRKDIST}/gcc/f/g77.1 ${PREFIX}/man/man1/g77.1
	cd ${PREFIX}/man/man1 && ln -f g77.1 f77.1
	cd ${PREFIX}/bin && ln -f g77 f77

WANTLIB =		c iberty

.include <bsd.port.mk>
