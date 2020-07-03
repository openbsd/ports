# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:39 sthen Exp $

COMMENT= 	perform diffs on arrays

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Array-Diff-0.09
PKGNAME =	p5-${DISTNAME}000
CATEGORIES=	devel
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

MAKE_ENV+=	TEST_POD=1

RUN_DEPENDS=	devel/p5-Algorithm-Diff \
		devel/p5-Class-Accessor

.include <bsd.port.mk>
