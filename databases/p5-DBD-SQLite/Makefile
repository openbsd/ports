# $OpenBSD: Makefile,v 1.17 2009/01/24 17:42:22 simon Exp $

SHARED_ONLY=		Yes

COMMENT=		SQLite drivers for the Perl DBI

MODULES=		cpan
DISTNAME=		DBD-SQLite-1.14
PKGNAME=		p5-${DISTNAME}p1v0
CATEGORIES=		databases

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
RUN_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
LIB_DEPENDS=		sqlite3:sqlite3->=3.6.4:databases/sqlite3

CONFIGURE_ARGS=		SQLITE_LOCATION=${LOCALBASE}
MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

# as DBD::SQLite bundles sqlite3, our patches can't use functions from newer
# versions installed via ports
post-extract:
	rm -f ${WRKSRC}/sqlite3.h ${WRKSRC}/sqlite3ext.h

.include <bsd.port.mk>
