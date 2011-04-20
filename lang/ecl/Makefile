# $OpenBSD: Makefile,v 1.11 2011/04/20 15:45:16 shadchin Exp $

COMMENT = 	embeddable common-lisp
CATEGORIES = 	lang

V =		11.1.1
DISTNAME = 	ecl-$V
SHARED_LIBS +=	ecl	2.0

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
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
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
		devel/boehm-gc \
		devel/libffi

WANTLIB +=	c ffi gc gmp m pthread

.include <bsd.port.mk>
