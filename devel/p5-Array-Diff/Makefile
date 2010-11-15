# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:01 espie Exp $

COMMENT= 	perform diffs on arrays

MODULES=	cpan
DISTNAME=	Array-Diff-0.05002
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=1

RUN_DEPENDS=	devel/p5-Algorithm-Diff \
		devel/p5-Class-Accessor

.include <bsd.port.mk>
