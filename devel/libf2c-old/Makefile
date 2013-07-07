# $OpenBSD: Makefile,v 1.13 2013/07/07 21:25:27 naddy Exp $

V =		2.95.3
CONFIG = 	${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS += 	CONFIG V
PKGNAME =	libf2c-$V
REVISION =	9
DISTFILES = 	libf2c-openbsd-$V.tgz
MASTER_SITES =	http://spacehopper.org/mirrors/

ONLY_FOR_ARCHS =	${GCC2_ARCHS}
COMMENT =	GNU fortran 77 libraries
CATEGORIES =	devel math
PERMIT_PACKAGE_CDROM = Yes

MAJOR =	8
MINOR =	0
SHARED_LIBS =	g2c	${MAJOR}.${MINOR}

WRKDIST =	${WRKDIR}/libf2c
BUILD_DEPENDS =	lang/g77-old:patch
LIBIBERTY_INCLUDES =	${WRKDIR}/lang/g77-old/libiberty/include
EGCS_DIR = ${WRKDIR}/lang/g77-old/g77

MAKE_FILE = ${WRKDIST}/Makefile.bsd-wrapper

post-extract:
	if test -e ${EGCS_DIR}/gcc; then \
		ln -sf ${EGCS_DIR}/gcc ${WRKDIR}/gcc; \
	else \
		exit 1; \
	fi
	ln -sf ${EGCS_DIR}/install-sh ${WRKDIR}/install-sh
	ln -sf ${EGCS_DIR}/config.sub ${WRKDIR}/config.sub
	ln -sf ${EGCS_DIR}/config.guess ${WRKDIR}/config.guess

do-configure:
	cd ${WRKDIST} && ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} obj
	cd ${WRKDIST} && ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} depend

MAKE_FLAGS = MANDIR=${TRUEPREFIX}/man/cat \
	INSTALL_LIBGCC= LIBGCC= \
	COMPILERS=f771 \
	USE_COLLECT2= \
	LIBDIR=${TRUEPREFIX}/lib \
	LIBIBERTY_INCLUDES=${LIBIBERTY_INCLUDES} \
	major=${MAJOR} minor=${MINOR}

post-install:
	cd ${WRKBUILD}/obj && ${INSTALL_DATA} g2c.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gcc-lib/${CONFIG}/$V
.for i in libfrtbegin.a libfrtbegin_pic.a libfrtbegin_p.a libg2c.a \
	libg2c_p.a libg2c_pic.a libg2c.so.*
	if test -e ${DESTDIR}${TRUEPREFIX}/lib/$i; then \
	  ln -sf ${TRUEPREFIX}/lib/$i ${PREFIX}/lib/gcc-lib/${CONFIG}/$V; \
	fi
.endfor

.include <bsd.port.mk>
