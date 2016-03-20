# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:09 naddy Exp $

COMMENT=	pager utility for Class::DBI

MODULES=	cpan
PKG_ARCH=	*
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
