# $OpenBSD: Makefile,v 1.11 2013/10/11 23:48:18 naddy Exp $

COMMENT=	pager utility for Class::DBI

MODULES=	cpan
DISTNAME=	Class-DBI-Pager-0.08
REVISION=	1
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-Data-Page \
		devel/p5-Exporter-Lite
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
