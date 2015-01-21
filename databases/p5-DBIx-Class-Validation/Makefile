# $OpenBSD: Makefile,v 1.10 2015/01/21 14:05:46 sthen Exp $

COMMENT=	data validation for DBIx::Class

MODULES=	cpan
DISTNAME=	DBIx-Class-Validation-0.02005
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBIx-Class \
		devel/p5-FormValidator-Simple

TEST_DEPENDS=databases/p5-DBD-SQLite \
		devel/p5-DateTime-Format-SQLite \
		devel/p5-Data-FormValidator \
		devel/p5-Test-Spelling

MAKE_ENV=	TEST_POD=Yes TEST_AUTHOR=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
