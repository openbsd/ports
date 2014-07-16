# $OpenBSD: Makefile,v 1.23 2014/07/16 09:11:43 espie Exp $

V =		3.3.6
CONFIG = 	${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS += 	CONFIG V
PKGNAME =	libf2c-$V
REVISION =	4
DISTFILES = 	libf2c-openbsd.tgz
MASTER_SITES =	http://spacehopper.org/mirrors/

COMMENT =	GNU fortran 77 libraries
CATEGORIES =	devel math
PERMIT_PACKAGE_CDROM = Yes

MAJOR=	8
MINOR=  1
SHARED_LIBS=	g2c	${MAJOR}.${MINOR}

WRKDIST =	${WRKDIR}/libf2c
MAKE_FILE = ${WRKDIST}/Makefile.bsd-wrapper

do-configure:
	cd ${WRKDIST} && ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} obj
	cd ${WRKDIST} && ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} depend

MAKE_FLAGS = MANDIR=${TRUEPREFIX}/man/cat \
	INSTALL_LIBGCC= LIBGCC= \
	COMPILERS=f771 \
	USE_COLLECT2= \
	LANGUAGES=f77 \
	LIBDIR=${TRUEPREFIX}/lib \
	major=${MAJOR} minor=${MINOR} \
	libf2c_cv_has_g77_builtin_types=yes

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
