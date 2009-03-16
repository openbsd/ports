# $OpenBSD: Makefile,v 1.3 2009/03/16 11:19:12 espie Exp $

COMMENT = 	embeddable common-lisp
CATEGORIES = 	lang

V =		8.12.0
DISTNAME = 	ecl-$V
MASTER_SITES = ${MASTER_SITE_SOURCEFORGE:=ecls/}
HOMEPAGE = http://ecls.sourceforge.net/
SUBST_VARS =	V

# GPLv2 or later
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes


SHARED_LIBS +=		ecl	0.0
CONFIGURE_STYLE = 	gnu
USE_GMAKE = 		Yes
USE_LIBTOOL = 		Yes
NO_REGRESS = 		Yes
CONFIGURE_ENV +=	LDFLAGS='-pthread -L${LOCALBASE}/lib' \
			CPPFLAGS=-I${LOCALBASE}/include \
			CFLAGS='${CFLAGS} -pthread' \
			ECLLIB_VERSION=${LIBecl_VERSION}

CONFIGURE_ARGS += 	--enable-boehm=system \
			--with-system-gmp \
			--with-gmp-prefix=${LOCALBASE}

MODGNU_CONFIG_GUESS_DIRS = 	${WRKDIST} \
				${WRKDIST}/src \
				${WRKDIST}/src/gc \
				${WRKDIST}/src/gmp

LIB_DEPENDS +=	gmp::devel/gmp \
		gc::devel/boehm-gc
		
WANTLIB +=	c m pthread

post-build:
	cd ${WRKBUILD}/build/doc && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} ${ALL_TARGET}

post-install:
	cd ${WRKBUILD}/build/doc && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} ${INSTALL_TARGET}
	

.include <bsd.port.mk>
