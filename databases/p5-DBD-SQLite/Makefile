# $OpenBSD: Makefile,v 1.33 2014/06/14 23:24:53 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		SQLite drivers for the Perl DBI

MODULES=		cpan
DISTNAME=		DBD-SQLite-1.35
EPOCH=			0
REVISION =		3
CATEGORIES=		databases
USE_GROFF =		Yes

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c sqlite3

CPAN_AUTHOR=		ADAMK

BUILD_DEPENDS =		databases/p5-DBI>=1.08
RUN_DEPENDS =		databases/p5-DBI>=1.08

CONFIGURE_ARGS=		SQLITE_LOCATION=/usr
MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

MAKE_ENV +=		AUTOMATED_TESTING=1

post-extract:
	rm ${WRKSRC}/sqlite3.{c,h}

.include <bsd.port.mk>
