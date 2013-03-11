# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:13 espie Exp $

COMMENT= 	perform diffs on arrays

MODULES=	cpan
DISTNAME=	Array-Diff-0.05002
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1

RUN_DEPENDS=	devel/p5-Algorithm-Diff \
		devel/p5-Class-Accessor

.include <bsd.port.mk>
