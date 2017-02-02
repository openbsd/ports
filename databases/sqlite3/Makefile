# $OpenBSD: Makefile,v 1.80 2017/02/02 07:37:41 landry Exp $

COMMENT=	embedded SQL implementation

DISTNAME =	sqlite-autoconf-3160200
PKGNAME=	sqlite3-3.16.2

SHARED_LIBS +=  sqlite3                   34.0 # 8.6

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
