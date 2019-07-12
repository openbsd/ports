# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:51 sthen Exp $

COMMENT=	declarative validation of data structures

DISTNAME=	Declare-Constraints-Simple-0.03
REVISION=	1

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
