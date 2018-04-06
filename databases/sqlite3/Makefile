# $OpenBSD: Makefile,v 1.92 2018/04/06 05:51:17 landry Exp $

COMMENT=	embedded SQL implementation

DISTNAME =	sqlite-autoconf-3230000
PKGNAME=	sqlite3-3.23.0

SHARED_LIBS +=  sqlite3                   37.2 # 8.6

CATEGORIES=	databases

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread readline termcap

MASTER_SITES =	${HOMEPAGE}2018/

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

NO_TEST=	Yes

.include <bsd.port.mk>
