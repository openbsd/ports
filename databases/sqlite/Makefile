# $OpenBSD: Makefile,v 1.5 2005/01/15 00:22:11 jolan Exp $

COMMENT=	"Embedded SQL implementation"

DISTNAME=	sqlite-2.8.15
CATEGORIES=	databases
HOMEPAGE=	http://www.sqlite.org/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Damien Miller <djm@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses readline

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.59
USE_GMAKE=		Yes
WRKDIST=		${WRKDIR}/sqlite

BUILD_DEPENDS=		tcl84::lang/tcl/8.4

CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		config_TARGET_TCL_LIBS="-L${LOCALBASE}/lib -ltcl84 -lm"
CONFIGURE_ENV+=		config_TARGET_TCL_INC="-I${LOCALBASE}/include/tcl8.4"

REGRESS_TARGET=		test

.include <bsd.port.mk>

