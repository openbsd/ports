# $OpenBSD: Makefile,v 1.27 2010/12/03 11:44:24 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=		MySQL drivers for the Perl DBI

DISTNAME=		DBD-mysql-4.014
REVISION=		1
CATEGORIES=		databases
MODULES=		cpan
USE_GROFF =		Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto m ssl z

BUILD_DEPENDS=		databases/p5-DBI>=1.08
RUN_DEPENDS=		databases/p5-DBI>=1.08
LIB_DEPENDS=		databases/mysql
REGRESS_DEPENDS=	databases/mysql,-server
WANTLIB +=		lib/mysql/mysqlclient>=10

REGRESS_IS_INTERACTIVE=	Yes

pre-regress:
	@mysqladmin ping >/dev/null 2>&1 || (echo 'mysql needs to be running'; exit 1)
	-@mysqladmin create test >/dev/null 2>&1

.include <bsd.port.mk>
