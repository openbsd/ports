# $OpenBSD: Makefile,v 1.2 2021/11/10 15:23:24 tim Exp $

COMMENT =	encrypted SQLite database

GH_ACCOUNT =	sqlcipher
GH_PROJECT =	sqlcipher
GH_TAGNAME =	v4.5.0

SHARED_LIBS +=  sqlcipher                 0.1 # 8.6

CATEGORIES =	databases

HOMEPAGE =	https://www.zetetic.net/sqlcipher/
MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# PD and BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c crypto curses m pthread readline z

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--enable-tempstore=yes \
			--disable-editline \
			--disable-tcl
CONFIGURE_ENV +=	TCLSH_CMD=${MODTCL_BIN}

NO_TEST =		Yes

CFLAGS +=		-DSQLITE_HAS_CODEC -DOMIT_MEMLOCK

MODULES =		lang/tcl
MODTCL_VERSION =	8.6
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

.include <bsd.port.mk>
