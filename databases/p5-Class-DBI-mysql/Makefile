# $OpenBSD: Makefile,v 1.4 2006/12/14 18:30:36 dassow Exp $

COMMENT=	"extensions to Class::DBI for MySQL "

MODULES=	cpan
DISTNAME=	Class-DBI-mysql-1.00
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI \
		::databases/p5-DBD-mysql
REGRESS_DEPENDS=:mysql-server-*:databases/mysql,-server

REGRESS_IS_INTERACTIVE=Yes

pre-regress:
	@mysqladmin ping >/dev/null 2>&1 || (echo 'mysql needs to be running'; exit 1)
	-@mysqladmin create test >/dev/null 2>&1

.include <bsd.port.mk>
