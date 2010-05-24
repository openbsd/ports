# $OpenBSD: Makefile,v 1.1.1.1 2010/05/24 22:42:08 espie Exp $

V =		3.3.5
CONFIG = 	${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS += 	CONFIG V
PKGNAME =	libf2c-$V
DISTFILES = 	libf2c-openbsd.tgz
MASTER_SITES =	http://spacehopper.org/mirrors/

COMMENT =	GNU fortran 77 libraries
CATEGORIES =	devel math
PERMIT_DISTFILES_CDROM = Yes
PERMIT_PACKAGE_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_FTP =	Yes

SHARED_LIBS=	g2c	8.1

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
	LIBDIR=${TRUEPREFIX}/lib

post-install:
	cd ${WRKBUILD}/obj && ${INSTALL_DATA} g2c.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gcc-lib/${CONFIG}/$V
.for i in libfrtbegin.a libfrtbegin_pic.a libfrtbegin_p.a libg2c.a \
	libg2c_p.a libg2c_pic.a libg2c.so.*
	if test -e ${TRUEPREFIX}/lib/$i; then \
	  ln -sf ${TRUEPREFIX}/lib/$i ${PREFIX}/lib/gcc-lib/${CONFIG}/$V; \
	fi
.endfor

.include <bsd.port.mk>
