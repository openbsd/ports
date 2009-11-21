# $OpenBSD: Makefile,v 1.20 2009/11/21 08:00:29 pea Exp $

SHARED_ONLY=	Yes

COMMENT=		MySQL drivers for the Perl DBI

DISTNAME=		DBD-mysql-4.013
CATEGORIES=		databases
MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto m ssl z

BUILD_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
RUN_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
LIB_DEPENDS=		lib/mysql/mysqlclient.>=10::databases/mysql
REGRESS_DEPENDS=	:mysql-server-*:databases/mysql,-server

REGRESS_IS_INTERACTIVE=	Yes

pre-regress:
	@mysqladmin ping >/dev/null 2>&1 || (echo 'mysql needs to be running'; exit 1)
	-@mysqladmin create test >/dev/null 2>&1

.include <bsd.port.mk>
