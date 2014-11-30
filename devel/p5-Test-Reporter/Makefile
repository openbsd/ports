# $OpenBSD: Makefile,v 1.10 2014/11/30 14:50:21 benoit Exp $

COMMENT= 	sends test results to cpan-testers@perl.org

MODULES=	cpan
DISTNAME =	Test-Reporter-1.60
CATEGORIES=	devel

EPOCH =		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1 \
		AUTHOR_TESTING=1

.include <bsd.port.mk>
