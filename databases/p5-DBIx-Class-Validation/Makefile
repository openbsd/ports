# $OpenBSD: Makefile,v 1.8 2012/04/07 14:32:37 sthen Exp $

COMMENT=	data validation for DBIx::Class

MODULES=	cpan
DISTNAME=	DBIx-Class-Validation-0.02005
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-DBIx-Class \
		devel/p5-FormValidator-Simple

REGRESS_DEPENDS=databases/p5-DBD-SQLite \
		devel/p5-DateTime-Format-SQLite \
		devel/p5-Data-FormValidator \
		devel/p5-Test-Spelling

MAKE_ENV=	TEST_POD=Yes TEST_AUTHOR=Yes
USE_GROFF =	Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
