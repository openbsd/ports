# $OpenBSD: Makefile,v 1.13 2019/05/08 15:44:45 danj Exp $

COMMENT=	pager utility for Class::DBI

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-Pager-0.08
REVISION=	2
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-Data-Page \
		devel/p5-Exporter-Lite
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
