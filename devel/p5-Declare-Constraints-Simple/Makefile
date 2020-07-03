# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:49 sthen Exp $

COMMENT=	declarative validation of data structures

DISTNAME=	Declare-Constraints-Simple-0.03
REVISION=	2

CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=	PHAYLON

MODULES=	cpan
PKG_ARCH=	*
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Carp-Clan \
		devel/p5-Class-Inspector \
		devel/p5-aliased

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
