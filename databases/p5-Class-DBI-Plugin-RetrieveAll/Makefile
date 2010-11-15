# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:52 espie Exp $

COMMENT=	more complex retrieve_all() for Class::DBI

MODULES=	cpan
DISTNAME=	Class-DBI-Plugin-RetrieveAll-1.04
CATEGORIES=	databases
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI
REGRESS_DEPENDS=databases/p5-DBD-SQLite

.include <bsd.port.mk>
