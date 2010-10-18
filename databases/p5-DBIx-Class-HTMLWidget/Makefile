# $OpenBSD: Makefile,v 1.4 2010/10/18 17:06:08 espie Exp $

COMMENT= 	publish DBIx::Class on the web

DISTNAME=	DBIx-Class-HTMLWidget-0.07
CATEGORIES=	databases www
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBIx-Class \
		::www/p5-HTML-Widget

MAKE_ENV=	TEST_POD=Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
