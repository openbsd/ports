# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:24 ajacoutot Exp $

COMMENT=	classes and UML-style associations on top of DBI

MODULES=	cpan
DISTNAME=	DBIx-DataModel-1.09
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-SQL-Abstract
REGRESS_DEPENDS=databases/p5-DBD-Mock

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
