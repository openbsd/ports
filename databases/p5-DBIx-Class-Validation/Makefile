# $OpenBSD: Makefile,v 1.9 2013/03/11 02:52:06 espie Exp $

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
USE_GROFF =	Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
