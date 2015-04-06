# $OpenBSD: Makefile,v 1.36 2015/04/06 11:46:17 jca Exp $

SHARED_ONLY=		Yes

COMMENT=		SQLite drivers for the Perl DBI

MODULES=		cpan
DISTNAME=		DBD-SQLite-1.46
EPOCH=			0
CATEGORIES=		databases

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c sqlite3

BUILD_DEPENDS =		databases/p5-DBI>=1.57
RUN_DEPENDS =		databases/p5-DBI>=1.57

CONFIGURE_ARGS=		SQLITE_LOCATION=/usr
MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

MAKE_ENV +=		AUTOMATED_TESTING=1

post-extract:
	rm ${WRKSRC}/sqlite3.{c,h}

.include <bsd.port.mk>
