# $OpenBSD: Makefile,v 1.16 2008/10/02 20:34:39 simon Exp $

SHARED_ONLY=		Yes

COMMENT=		SQLite drivers for the Perl DBI

MODULES=		cpan
DISTNAME=		DBD-SQLite-1.14
PKGNAME=		p5-${DISTNAME}p0v0
CATEGORIES=		databases

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
RUN_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
LIB_DEPENDS=		sqlite3::databases/sqlite3

CONFIGURE_ARGS=		SQLITE_LOCATION=${LOCALBASE}
MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

.include <bsd.port.mk>
