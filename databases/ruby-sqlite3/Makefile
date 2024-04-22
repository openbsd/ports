COMMENT=	access a SQLite3 database from ruby

DISTNAME=	sqlite3-2.0.0
CATEGORIES=	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE=	https://github.com/sparklemotion/sqlite3-ruby

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

WANTLIB=		sqlite3
LIB_DEPENDS=		databases/sqlite3

CONFIGURE_STYLE=	ruby gem ext
CONFIGURE_ARGS=		--enable-system-libraries

.include <bsd.port.mk>
