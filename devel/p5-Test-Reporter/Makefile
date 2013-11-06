# $OpenBSD: Makefile,v 1.9 2013/11/06 16:51:06 benoit Exp $

COMMENT= 	sends test results to cpan-testers@perl.org

MODULES=	cpan
DISTNAME =	Test-Reporter-1.59
CATEGORIES=	devel

EPOCH =		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1 \
		AUTHOR_TESTING=1

.include <bsd.port.mk>
