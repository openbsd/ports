# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:47 espie Exp $

COMMENT= 	creating and updating Bugzilla bugs

MODULES=	cpan
DISTNAME=	WWW-Bugzilla-0.8
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-MethodMaker \
		www/p5-WWW-Mechanize

TEST_IS_INTERACTIVE=makes network connections to bugzilla servers

.include <bsd.port.mk>
