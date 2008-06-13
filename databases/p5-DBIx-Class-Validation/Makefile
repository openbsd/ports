# $OpenBSD: Makefile,v 1.3 2008/06/13 18:36:01 merdely Exp $

COMMENT= 	data validation for DBIx::Class

MODULES=	cpan
DISTNAME=	DBIx-Class-Validation-0.02003
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBIx-Class \
		::devel/p5-DateTime-Format-MySQL \
		::devel/p5-FormValidator-Simple

REGRESS_DEPENDS=::databases/p5-DBD-SQLite \
		::databases/p5-SQL-Translator \
		::devel/p5-Data-FormValidator \
		::devel/p5-Test-Spelling \
		::textproc/aspell/core

MAKE_ENV=	TEST_POD=Yes TEST_AUTHOR=Yes

.include <bsd.port.mk>
