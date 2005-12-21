# $OpenBSD: Makefile,v 1.11 2005/12/21 07:58:31 jolan Exp $

COMMENT=	"Embedded SQL implementation"
DISTNAME=	sqlite-2.8.17
PKGNAME=	${DISTNAME}p0
CATEGORIES=	databases
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

AUTOCONF_VERSION=2.59
USE_GMAKE=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
WANTLIB=	c ncurses readline

FLAVORS=no_tcl
FLAVOR?=

CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
.if ${FLAVOR:Mno_tcl}
NO_REGRESS=	Yes
CONFIGURE_ARGS+=--disable-tcl
.else
REGRESS_TARGET=	test
BUILD_DEPENDS+=	tcl84::lang/tcl/8.4
CONFIGURE_ENV+=	config_TARGET_TCL_LIBS="-L${LOCALBASE}/lib -ltcl84 -lm"
CONFIGURE_ENV+=	config_TARGET_TCL_INC="-I${LOCALBASE}/include/tcl8.4"
.endif

.include <bsd.port.mk>
