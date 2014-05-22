# $OpenBSD: Makefile,v 1.12 2014/05/22 09:48:57 sebastia Exp $

COMMENT =	GNUstep database abstraction layer

VERSION =	1.7.0
REVISION =	1
DISTNAME =	SQLClient-${VERSION}
PKGNAME =	gnustep-sqlclient-${VERSION}

SHARED_LIBS +=  SQLClient	1.1

CATEGORIES =	databases

HOMEPAGE =	http://wiki.gnustep.org/index.php/SQLClient

MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI = 	No
WANTLIB +=		Performance pq ecpg mysqlclient sqlite3
LIB_DEPENDS +=		x11/gnustep/performance \
			databases/mysql \
			databases/postgresql

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-additional-include="-I${LOCALBASE}/include \
				-I${LOCALBASE}/include/postgresql" \
			--with-additional-lib=-L${LOCALBASE}/lib
MAKE_FLAGS +=	SQLClient_INTERFACE_VERSION=${LIBSQLClient_VERSION}

.include <bsd.port.mk>
