# $OpenBSD: Makefile,v 1.79 2016/09/23 09:13:39 sthen Exp $

COMMENT=	embedded SQL implementation

DISTNAME =	sqlite-autoconf-3140200
PKGNAME=	sqlite3-3.14.2

SHARED_LIBS +=  sqlite3                   33.0 # 8.6

CATEGORIES=	databases

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread readline termcap

MASTER_SITES =	${HOMEPAGE}2016/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-editline \
		--disable-static-shell

# for mozilla
CFLAGS+=	-DSQLITE_ENABLE_UNLOCK_NOTIFY \
		-DSQLITE_ENABLE_DBSTAT_VTAB

NO_TEST=	Yes

.include <bsd.port.mk>
