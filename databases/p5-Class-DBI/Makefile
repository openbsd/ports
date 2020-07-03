# $OpenBSD: Makefile,v 1.14 2020/07/03 21:44:34 sthen Exp $

COMMENT=	simple database abstraction

MODULES=	cpan
PKG_ARCH=	*
V=		3.0.16
DISTNAME=	Class-DBI-v${V}
PKGNAME=	p5-Class-DBI-${V}
REVISION =	3
CATEGORIES=	databases

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Class-Trigger \
		devel/p5-Clone \
		devel/p5-Universal-moniker \
		databases/p5-Ima-DBI
TEST_DEPENDS=databases/p5-DBD-SQLite

.include <bsd.port.mk>
