# $OpenBSD: Makefile,v 1.8 2010/10/18 17:06:07 espie Exp $

COMMENT=	produce HTML form elements for database columns

MODULES=	cpan
DISTNAME=	Class-DBI-AsForm-2.42
REVISION=	0
CATEGORIES=	www databases
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI-Plugin-Type \
		::www/p5-HTML-Tree
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
