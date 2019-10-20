# $OpenBSD: Makefile,v 1.25 2019/10/20 08:03:04 ajacoutot Exp $

COMMENT =	GNUstep database abstraction layer

VERSION =	1.8.1
REVISION =	8
DISTNAME =	SQLClient-${VERSION}
PKGNAME =	gnustep-sqlclient-${VERSION}

SHLIB_VERSION =	2.0
SHARED_LIBS +=  SQLClient	${SHLIB_VERSION}

CATEGORIES =	databases

HOMEPAGE =	http://wiki.gnustep.org/index.php/SQLClient

MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No
WANTLIB +=		Performance pq ecpg mysqlclient sqlite3
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=		x11/gnustep/performance \
			databases/mariadb \
			databases/postgresql \
			databases/sqlite3

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-additional-include="-I${LOCALBASE}/include \
				-I${LOCALBASE}/include/postgresql" \
			--with-additional-lib=-L${LOCALBASE}/lib
MAKE_FLAGS +=	SQLClient_INTERFACE_VERSION=${LIBSQLClient_VERSION}

SUBST_VARS +=	SHLIB_VERSION

.include <bsd.port.mk>
