# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:23 espie Exp $

COMMENT= 	sends test results to cpan-testers@perl.org

MODULES=	cpan
DISTNAME=	Test-Reporter-1.5201
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1 \
		AUTHOR_TESTING=1

.include <bsd.port.mk>
