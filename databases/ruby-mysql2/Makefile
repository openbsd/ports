COMMENT=	modern, simple and very fast MySQL library for Ruby

DISTNAME=	mysql2-0.5.3
CATEGORIES=	databases

HOMEPAGE=	https://github.com/brianmario/mysql2

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

WANTLIB=	crypto mysqlclient ssl z

LIB_DEPENDS=	databases/mariadb

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
