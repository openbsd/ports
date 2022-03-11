COMMENT =	MariaDB and MySQL driver for the Perl5 Database Interface

DISTNAME =	DBD-MariaDB-1.21
REVISION =	3

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

CATEGORIES =	databases

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c mariadb perl

MODULES =		cpan databases/mariadb
BUILD_DEPENDS =		databases/p5-DBI>=1.608 \
			devel/p5-Devel-CheckLib>=1.12
RUN_DEPENDS =		databases/p5-DBI>=1.608
LIB_DEPENDS =		databases/mariadb
TEST_DEPENDS =		databases/p5-DBI \
			databases/mariadb,-server \
			devel/p5-Test-Deep \
			security/p5-Net-SSLeay>=1.43 \
			sysutils/p5-Proc-ProcessTable
TEST_ENV=               EXTENDED_TESTING=1


.include <bsd.port.mk>
