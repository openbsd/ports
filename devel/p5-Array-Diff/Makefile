# $OpenBSD: Makefile,v 1.9 2014/12/02 17:10:00 nigel Exp $

COMMENT= 	perform diffs on arrays

MODULES=	cpan
DISTNAME =	Array-Diff-0.07
PKGNAME =	p5-${DISTNAME}000
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1

RUN_DEPENDS=	devel/p5-Algorithm-Diff \
		devel/p5-Class-Accessor

.include <bsd.port.mk>
