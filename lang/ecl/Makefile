# $OpenBSD: Makefile,v 1.1.1.1 2008/05/06 09:31:25 espie Exp $

COMMENT = embeddable common-lisp
CATEGORIES = lang

DISTNAME = ecl-0.9j-p1
PKGNAME = ecl-0.9jpl1
WRKDIST = ${WRKDIR}/ecl-0.9j
EXTRACT_SUFX = .tgz
MASTER_SITES = ${MASTER_SITE_SOURCEFORGE:=ecls/}
HOMEPAGE = http://ecls.sourceforge.net/

# GPLv2 or later
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes


CONFIGURE_STYLE = gnu
USE_GMAKE = Yes
USE_LIBTOOL = Yes
CONFIGURE_ENV +=	LDFLAGS='-pthread -L${LOCALBASE}/lib' \
			CPPFLAGS=-I${LOCALBASE}/include \
			CFLAGS='${CFLAGS} -pthread'

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
