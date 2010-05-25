# $OpenBSD: Makefile,v 1.4 2010/05/25 13:45:19 espie Exp $

V =		3.3.5
CONFIG = 	${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS += 	CONFIG V
PKGNAME =	libf2c-$Vp0
DISTFILES = 	libf2c-openbsd.tgz
MASTER_SITES =	http://spacehopper.org/mirrors/

NOT_FOR_ARCHES =	${GCC2_ARCHS}
COMMENT =	GNU fortran 77 libraries
CATEGORIES =	devel math
PERMIT_DISTFILES_CDROM = Yes
PERMIT_PACKAGE_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_FTP =	Yes

MAJOR=	8
MINOR=  1
SHARED_LIBS=	g2c	${MAJOR}.${MINOR}

WRKDIST =	${WRKDIR}/libf2c
MAKE_FILE = ${WRKDIST}/Makefile.bsd-wrapper

do-configure:
	cd ${WRKDIST} && ${MAKE} -f ${MAKE_FILE} obj
	cd ${WRKDIST} && ${MAKE} -f ${MAKE_FILE} depend

MAKE_FLAGS = MANDIR=${TRUEPREFIX}/man/cat \
	INSTALL_LIBGCC= LIBGCC= \
	COMPILERS=f771 \
	USE_COLLECT2= \
	LANGUAGES=f77 \
	LIBDIR=${TRUEPREFIX}/lib \
	major=${MAJOR} minor=${MINOR}

post-install:
	cd ${WRKBUILD}/obj && ${INSTALL_DATA} g2c.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gcc-lib/${CONFIG}/$V
.for i in libfrtbegin.a libfrtbegin_pic.a libfrtbegin_p.a libg2c.a \
	libg2c_p.a libg2c_pic.a libg2c.so.${MAJOR}.${MINOR}
	if test -e ${PREFIX}/lib/$i; then \
	  ln -sf ${TRUEPREFIX}/lib/$i ${PREFIX}/lib/gcc-lib/${CONFIG}/$V; \
	fi
.endfor

.include <bsd.port.mk>
