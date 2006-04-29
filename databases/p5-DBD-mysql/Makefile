# $OpenBSD: Makefile,v 1.10 2006/04/29 10:30:31 brad Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=		'MySQL drivers for the Perl DBI'

DISTNAME=		DBD-mysql-3.0002_5
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		databases perl5

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto m ssl z

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../../authors/id/C/CA/CAPTTOFU/}

BUILD_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
RUN_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
LIB_DEPENDS=		lib/mysql/mysqlclient.10::databases/mysql
REGRESS_DEPENDS=	:mysql-server-*:databases/mysql,-server

CONFIGURE_STYLE=	perl

pre-regress:
	@mysqladmin ping >/dev/null 2>&1 || (echo 'mysql needs to be running'; exit 1)
	-@mysqladmin create test >/dev/null 2>&1

.include <bsd.port.mk>
