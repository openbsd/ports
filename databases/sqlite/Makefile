# $OpenBSD: Makefile,v 1.21 2013/03/11 02:52:08 espie Exp $

COMMENT=	Embedded SQL implementation
DISTNAME=	sqlite-2.8.17
REVISION =	3
CATEGORIES=	databases
SHARED_LIBS +=	sqlite               8.6      # .0.0

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes

AUTOCONF_VERSION=2.59
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WANTLIB=	c ncurses readline

FLAVORS=no_tcl
FLAVOR?=

CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
.if ${FLAVOR:Mno_tcl}
NO_TEST=	Yes
CONFIGURE_ARGS+=--disable-tcl
.else
TEST_TARGET=	test
MODULES=	lang/tcl
BUILD_DEPENDS+=	${MODTCL_BUILD_DEPENDS}
CONFIGURE_ENV+=	config_TARGET_TCL_LIBS="-L${LOCALBASE}/lib -ltcl${MODTCL_VERSION:S/.//} -lm"
CONFIGURE_ENV+=	config_TARGET_TCL_INC="-I${MODTCL_INCDIR}"
.endif

.include <bsd.port.mk>
