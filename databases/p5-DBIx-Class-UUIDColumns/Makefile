# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:10 naddy Exp $

COMMENT=	unique identifiers as columns in DBIx::Class

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	DBIx-Class-UUIDColumns-0.02006
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modinst

RUN_DEPENDS=	databases/p5-DBIx-Class \
		devel/p5-Class-Accessor-Grouped \
		devel/p5-Data-UUID

TEST_DEPENDS=	databases/p5-DBD-SQLite

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
