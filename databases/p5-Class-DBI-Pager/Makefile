# $OpenBSD: Makefile,v 1.14 2019/07/12 20:43:55 sthen Exp $

COMMENT=	pager utility for Class::DBI

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-Pager-0.08
REVISION=	2
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-Data-Page \
		devel/p5-Exporter-Lite
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
