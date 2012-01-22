# $OpenBSD: Makefile,v 1.28 2012/01/22 11:29:55 nigel Exp $

SHARED_ONLY=		Yes

COMMENT=		SQLite drivers for the Perl DBI

MODULES=		cpan
DISTNAME=		DBD-SQLite-1.35
EPOCH=			0
CATEGORIES=		databases
USE_GROFF =		Yes

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		ADAMK

BUILD_DEPENDS =		databases/p5-DBI>=1.08
RUN_DEPENDS =		databases/p5-DBI>=1.08
LIB_DEPENDS =		databases/sqlite3>=3.6.13p0
WANTLIB =		sqlite3

CONFIGURE_ARGS=		SQLITE_LOCATION=${LOCALBASE}
MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

MAKE_ENV +=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
