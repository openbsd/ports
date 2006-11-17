# $OpenBSD: Makefile,v 1.1.1.1 2006/11/17 16:22:21 espie Exp $

COMMENT= 	"data validation for DBIx::Class"

MODULES=	cpan
DISTNAME=	DBIx-Class-Validation-0.01001
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::databases/p5-DBIx-Class \
		::devel/p5-FormValidator-Simple

REGRESS_DEPENDS=::databases/p5-DBD-SQLite \
		::databases/p5-SQL-Translator

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
