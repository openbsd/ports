# $OpenBSD: Makefile,v 1.10 2010/12/04 14:36:19 espie Exp $

COMMENT = 	embeddable common-lisp
CATEGORIES = 	lang

BROKEN-hppa =	infinite loop during build

V =		10.4.1
DISTNAME = 	ecl-$V
SHARED_LIBS +=	ecl	1.0

HOMEPAGE = 	http://ecls.sourceforge.net/
SUBST_VARS =	V

# GPLv2 or later
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = 	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ecls/}

CONFIGURE_STYLE = 	gnu
USE_GMAKE = 		Yes
USE_LIBTOOL = 		Yes
USE_GROFF =		Yes
NO_REGRESS = 		Yes
CONFIGURE_ENV +=	LDFLAGS='-pthread -L${LOCALBASE}/lib' \
			CPPFLAGS=-I${LOCALBASE}/include \
			CFLAGS='${CFLAGS} -pthread' \
			ECLLIB_VERSION=${LIBecl_VERSION}
FLAVORS =		debug
FLAVOR ?=

CONFIGURE_ARGS += 	--enable-boehm=system \
			--with-system-gmp \
			--with-gmp-prefix=${LOCALBASE} \

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS +=	--with-debug-cflags=-g
.endif

MODGNU_CONFIG_GUESS_DIRS = 	${WRKDIST} \
				${WRKDIST}/src \
				${WRKDIST}/src/gc \
				${WRKDIST}/src/gmp

LIB_DEPENDS +=	devel/gmp \
		devel/boehm-gc
		
WANTLIB +=	c gc gmp m pthread

.include <bsd.port.mk>
