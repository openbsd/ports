# $OpenBSD: Makefile,v 1.6 2010/06/07 14:25:47 jasper Exp $

V =		3.3.5
CONFIG = 	${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS += 	CONFIG V
PKGNAME =	libf2c-$Vp2
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

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

do-configure:
	cd ${WRKDIST} && ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} obj
	cd ${WRKDIST} && ${MAKE} -f ${MAKE_FILE} ${MAKE_FLAGS} depend

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
.if ${COMPILER_VERSION:L:Mgcc4*}
MAKE_FLAGS += libf2c_cv_has_g77_builtin_types=yes
.endif
