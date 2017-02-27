# $OpenBSD: Makefile,v 1.51 2017/02/27 15:05:03 giovanni Exp $

COMMENT=		MySQL drivers for the Perl DBI
DISTNAME=		DBD-mysql-4.041.2017.02.27
PKGNAME=		p5-${DISTNAME}

CATEGORIES=		databases

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

MODULES=		perl databases/mariadb
GH_COMMIT=		efe160d0491f22276d82b15b2f6213a3525d6b68
GH_ACCOUNT=		perl5-dbi
GH_PROJECT=		DBD-mysql

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m perl pthread ssl z
WANTLIB+=		lib/mysql/mysqlclient

BUILD_DEPENDS=		databases/p5-DBI>=1.08 \
			devel/p5-Devel-CheckLib
RUN_DEPENDS=		databases/p5-DBI>=1.08
LIB_DEPENDS=		databases/mariadb
TEST_DEPENDS=		databases/mariadb,-server \
			devel/p5-Test-Deep \
			sysutils/p5-Proc-ProcessTable
TEST_ENV=		EXTENDED_TESTING=1

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
