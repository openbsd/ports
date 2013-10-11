# $OpenBSD: Makefile,v 1.7 2013/10/11 23:48:26 naddy Exp $

COMMENT= 	perform diffs on arrays

MODULES=	cpan
DISTNAME=	Array-Diff-0.05002
REVISION=	1
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1

RUN_DEPENDS=	devel/p5-Algorithm-Diff \
		devel/p5-Class-Accessor

.include <bsd.port.mk>
