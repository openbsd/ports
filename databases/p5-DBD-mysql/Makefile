# $OpenBSD: Makefile,v 1.38 2014/06/14 23:24:53 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		MySQL drivers for the Perl DBI

DISTNAME=		DBD-mysql-4.023
REVISION=		1
CATEGORIES=		databases

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m pthread ssl z

BUILD_DEPENDS=		databases/p5-DBI>=1.08
RUN_DEPENDS=		databases/p5-DBI>=1.08
LIB_DEPENDS=		databases/mysql
TEST_DEPENDS=		databases/mysql,-server
WANTLIB +=		lib/mysql/mysqlclient>=10

TEST_IS_INTERACTIVE=	Yes

pre-test:
	@mysqladmin ping >/dev/null 2>&1 || (echo 'MySQL needs to be running'; exit 1)
	-@mysqladmin create test >/dev/null 2>&1

.include <bsd.port.mk>
