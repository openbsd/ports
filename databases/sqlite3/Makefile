# $OpenBSD: Makefile,v 1.1.1.1 2004/11/07 00:10:17 djm Exp $

COMMENT=	"Embedded SQL implementation"

VERSION=	3.0.8
PKGNAME=	sqlite3-${VERSION}
DISTNAME=	sqlite-${VERSION}
CATEGORIES=	databases
HOMEPAGE=	http://www.sqlite.org/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Damien Miller <djm@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
WRKDIST=		${WRKDIR}/sqlite

BUILD_DEPENDS=		tcl84::lang/tcl/8.4

CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		config_TARGET_TCL_LIBS="-L${LOCALBASE}/lib -ltcl84 -lm"
CONFIGURE_ENV+=		config_TARGET_TCL_INC="-I${LOCALBASE}/include/tcl8.4"

REGRESS_TARGET=		test

.include <bsd.port.mk>

