# $OpenBSD: Makefile,v 1.89 2017/11/09 18:47:00 landry Exp $

COMMENT=	embedded SQL implementation

DISTNAME =	sqlite-autoconf-3210000
PKGNAME=	sqlite3-3.21.0

SHARED_LIBS +=  sqlite3                   37.1 # 8.6

CATEGORIES=	databases

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread readline termcap

MASTER_SITES =	${HOMEPAGE}2017/

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
