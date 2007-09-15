# $OpenBSD: Makefile,v 1.2 2007/09/15 20:34:01 simon Exp $

COMMENT= 	unique identifiers as columns in DBIx::Class

MODULES=	cpan
DISTNAME=	DBIx-Class-UUIDColumns-0.01000
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::databases/p5-DBIx-Class \
		::devel/p5-Data-UUID 

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
