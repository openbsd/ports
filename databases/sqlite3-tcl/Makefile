# $OpenBSD: Makefile,v 1.1 2016/09/23 09:14:53 sthen Exp $

COMMENT=	Tcl bindings for sqlite3 (embedded SQL implementation)

DISTNAME=	sqlite-autoconf-3140200
PKGNAME=	sqlite3-tcl-3.14.2

WRKSRC=		${WRKDIST}/tea

SHARED_LIBS +=  sqlite3142                0.0 # 1.0

CATEGORIES=	databases

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread sqlite3

MASTER_SITES=	${HOMEPAGE}2016/

CONFIGURE_STYLE= gnu

MODULES+=	lang/tcl
BUILD_DEPENDS=  ${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
LIB_DEPENDS=	databases/sqlite3

FAKE_FLAGS=     PKG_DIR=sqlite3

CONFIGURE_ARGS=	--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		SHLIB_VERSION=${LIBsqlite3142_VERSION}

# for mozilla
CFLAGS+=	-DSQLITE_ENABLE_UNLOCK_NOTIFY

NO_TEST=	Yes

.include <bsd.port.mk>
