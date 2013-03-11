# $OpenBSD: Makefile,v 1.10 2013/03/11 02:52:06 espie Exp $

COMMENT=	pager utility for Class::DBI

MODULES=	cpan
DISTNAME=	Class-DBI-Pager-0.08
REVISION=	1
CATEGORIES=	databases
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-Data-Page \
		devel/p5-Exporter-Lite
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
