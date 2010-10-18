# $OpenBSD: Makefile,v 1.2 2010/10/18 17:47:55 espie Exp $

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

RUN_DEPENDS=	::devel/p5-Algorithm-Diff \
		::devel/p5-Class-Accessor

.include <bsd.port.mk>
