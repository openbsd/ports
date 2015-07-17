# $OpenBSD: Makefile,v 1.44 2015/07/17 16:34:01 zhuk Exp $

SHARED_ONLY=		Yes

COMMENT=		MySQL drivers for the Perl DBI

DISTNAME=		DBD-mysql-4.029
CATEGORIES=		databases
REVISION=		0

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

MODULES=		cpan databases/mariadb
CPAN_AUTHOR=		CAPTTOFU

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m pthread ssl z

BUILD_DEPENDS=		databases/p5-DBI>=1.08
RUN_DEPENDS=		databases/p5-DBI>=1.08
LIB_DEPENDS=		databases/mariadb
TEST_DEPENDS=		databases/mariadb,-server \
			devel/p5-Test-Deep
WANTLIB +=		lib/mysql/mysqlclient

.include <bsd.port.mk>
