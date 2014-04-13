# $OpenBSD: Makefile,v 1.7 2014/04/13 01:01:39 naddy Exp $

COMMENT= 	creating and updating Bugzilla bugs

MODULES=	cpan
DISTNAME=	WWW-Bugzilla-0.8
REVISION=	0
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-MethodMaker \
		www/p5-WWW-Mechanize

TEST_IS_INTERACTIVE=makes network connections to bugzilla servers

.include <bsd.port.mk>
