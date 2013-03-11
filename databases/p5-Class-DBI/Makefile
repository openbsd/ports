# $OpenBSD: Makefile,v 1.10 2013/03/11 02:52:05 espie Exp $

COMMENT=	simple database abstraction

MODULES=	cpan
V=		3.0.16
DISTNAME=	Class-DBI-v${V}
PKGNAME=	p5-Class-DBI-${V}
REVISION =	2
CATEGORIES=	databases
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Class-Trigger \
		devel/p5-Clone \
		devel/p5-Universal-moniker \
		databases/p5-Ima-DBI
TEST_DEPENDS=databases/p5-DBD-SQLite

.include <bsd.port.mk>
