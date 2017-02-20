# $OpenBSD: Makefile,v 1.81 2017/02/20 19:31:56 landry Exp $

COMMENT=	embedded SQL implementation

DISTNAME =	sqlite-autoconf-3170000
PKGNAME=	sqlite3-3.17.0

SHARED_LIBS +=  sqlite3                   35.0 # 8.6

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

NO_TEST=	Yes

.include <bsd.port.mk>
