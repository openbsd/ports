# $OpenBSD: Makefile,v 1.1.1.1 2003/12/30 20:41:29 wilfried Exp $

COMMENT=		'MySQL drivers for the Perl DBI'

DISTNAME=		DBD-mysql-2.9003
PKGNAME=		p5-DBD-mysql-2.90.03
CATEGORIES=		databases perl5

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DBD/}

BUILD_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
RUN_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
LIB_DEPENDS=		lib/mysql/mysqlclient.10:mysql-client-4.*:databases/mysql
REGRESS_DEPENDS=	:mysql-server-4.*:databases/mysql,-server

CONFIGURE_STYLE=	perl

pre-regress:
	@mysqladmin ping >/dev/null 2>&1 || (echo 'mysql needs to be running'; exit 1)
	-@mysqladmin create test >/dev/null 2>&1

.include <bsd.port.mk>
