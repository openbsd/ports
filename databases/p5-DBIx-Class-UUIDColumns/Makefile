# $OpenBSD: Makefile,v 1.6 2012/04/07 14:35:06 sthen Exp $

COMMENT=	unique identifiers as columns in DBIx::Class

MODULES=	cpan
DISTNAME=	DBIx-Class-UUIDColumns-0.02005
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modinst

RUN_DEPENDS=	databases/p5-DBIx-Class \
		devel/p5-Class-Accessor-Grouped \
		devel/p5-Data-UUID

REGRESS_DEPENDS=	databases/p5-DBD-SQLite

MAKE_ENV=	TEST_POD=Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
