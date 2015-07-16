# $OpenBSD: Makefile,v 1.43 2015/07/16 23:57:20 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		MySQL drivers for the Perl DBI

DISTNAME=		DBD-mysql-4.029
CATEGORIES=		databases
REVISION=		0

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

MODULES=		cpan
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

TEST_IS_INTERACTIVE=	Yes

pre-test:
	@mysqladmin ping >/dev/null 2>&1 || (echo 'MySQL needs to be running'; exit 1)
	-@mysqladmin create test >/dev/null 2>&1

.include <bsd.port.mk>
