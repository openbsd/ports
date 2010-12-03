# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:24 ajacoutot Exp $

COMMENT= 	unique identifiers as columns in DBIx::Class

MODULES=	cpan
DISTNAME=	DBIx-Class-UUIDColumns-0.01000
REVISION=	0
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	databases/p5-DBIx-Class \
		devel/p5-Data-UUID 

MAKE_ENV=	TEST_POD=Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
