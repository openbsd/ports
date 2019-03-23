# $OpenBSD: Makefile,v 1.99 2019/03/23 07:16:35 landry Exp $

COMMENT=	embedded SQL implementation

DISTNAME =	sqlite-autoconf-3270200
PKGNAME=	sqlite3-3.27.2

SHARED_LIBS +=  sqlite3                   37.4 # 8.6

CATEGORIES=	databases

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses m pthread readline z

MASTER_SITES =	${HOMEPAGE}2019/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-editline \
		--disable-static-shell

# for x11/gnome/tracker
CONFIGURE_ARGS +=	--enable-fts5

# for mozilla
CFLAGS+=	-DSQLITE_ENABLE_UNLOCK_NOTIFY \
		-DSQLITE_ENABLE_FTS3 \
		-DSQLITE_ENABLE_DBSTAT_VTAB

# update p5-DBD-SQLite's Makefile.PL if enabling -DSQLITE_ENABLE_COLUMN_METADATA
BUILD_DEPENDS =	converters/sqlite2mdoc
post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/man/man3
		${LOCALBASE}/bin/sqlite2mdoc -p ${PREFIX}/man/man3 ${PREFIX}/include/sqlite3.h

NO_TEST=	Yes

.include <bsd.port.mk>
