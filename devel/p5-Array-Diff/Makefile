# $OpenBSD: Makefile,v 1.8 2014/12/01 13:36:03 benoit Exp $

COMMENT= 	perform diffs on arrays

MODULES=	cpan
DISTNAME =	Array-Diff-0.07
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1

RUN_DEPENDS=	devel/p5-Algorithm-Diff \
		devel/p5-Class-Accessor

.include <bsd.port.mk>
