# $OpenBSD: Makefile,v 1.6 2015/01/21 06:13:47 bentley Exp $

COMMENT=	declarative validation of data structures

DISTNAME=	Declare-Constraints-Simple-0.03
REVISION =	0

CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	PHAYLON

MODULES=	cpan
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Carp-Clan \
		devel/p5-Class-Inspector \
		devel/p5-aliased

MAKE_ENV=	TEST_POD=Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
