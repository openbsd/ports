# $OpenBSD: Makefile,v 1.7 2013/03/11 02:52:06 espie Exp $

COMMENT=	unique identifiers as columns in DBIx::Class

MODULES=	cpan
DISTNAME=	DBIx-Class-UUIDColumns-0.02005
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modinst

RUN_DEPENDS=	databases/p5-DBIx-Class \
		devel/p5-Class-Accessor-Grouped \
		devel/p5-Data-UUID

TEST_DEPENDS=	databases/p5-DBD-SQLite

MAKE_ENV=	TEST_POD=Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
