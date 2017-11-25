# $OpenBSD: Makefile,v 1.25 2017/11/25 13:27:48 espie Exp $

COMMENT=	Embedded SQL implementation
DISTNAME=	sqlite-2.8.17
FIX_EXTRACT_PERMISSIONS =	Yes
REVISION =	4
CATEGORIES=	databases
SHARED_LIBS +=	sqlite               8.6      # .0.0

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes

AUTOCONF_VERSION=2.59
USE_GMAKE=	Yes

WANTLIB=	c ncurses readline

FLAVORS=no_tcl
FLAVOR?=

CONFIGURE_STYLE=autoconf no-autoheader
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
