COMMENT =	GNUstep database abstraction layer

VERSION =	1.9.0
DISTNAME =	SQLClient-${VERSION}
PKGNAME =	gnustep-sqlclient-${VERSION}
REVISION =	0

SHLIB_VERSION =	2.1
SHARED_LIBS +=  SQLClient	${SHLIB_VERSION}

CATEGORIES =	databases

HOMEPAGE =	http://wiki.gnustep.org/index.php/SQLClient

SITES =		${SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No
MODGNUSTEP_NEEDS_BACK =	No
WANTLIB +=		Performance pq ecpg mariadb sqlite3
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
