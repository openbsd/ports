# $OpenBSD: Makefile,v 1.31 2013/03/11 02:52:06 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		SQLite drivers for the Perl DBI

MODULES=		cpan
DISTNAME=		DBD-SQLite-1.35
EPOCH=			0
REVISION =		1
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

.include <bsd.port.mk>
