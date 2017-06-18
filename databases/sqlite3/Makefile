# $OpenBSD: Makefile,v 1.85 2017/06/18 19:02:59 landry Exp $

COMMENT=	embedded SQL implementation

DISTNAME =	sqlite-autoconf-3190300
PKGNAME=	sqlite3-3.19.3

SHARED_LIBS +=  sqlite3                   36.0 # 8.6

CATEGORIES=	databases

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread readline termcap

MASTER_SITES =	${HOMEPAGE}2017/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-editline \
		--disable-static-shell

# for mozilla
CFLAGS+=	-DSQLITE_ENABLE_UNLOCK_NOTIFY \
		-DSQLITE_ENABLE_DBSTAT_VTAB

# update p5-DBD-SQLite's Makefile.PL if enabling -DSQLITE_ENABLE_COLUMN_METADATA

NO_TEST=	Yes

.include <bsd.port.mk>
