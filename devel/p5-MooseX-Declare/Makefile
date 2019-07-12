# $OpenBSD: Makefile,v 1.14 2019/07/12 21:02:17 sthen Exp $

COMMENT=		declarative syntax for Moose

DISTNAME =		MooseX-Declare-0.43
CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-MooseX-Method-Signatures>=0.37 \
			devel/p5-MooseX-Role-Parameterized \
			devel/p5-MooseX-Types \
			devel/p5-namespace-autoclean

TEST_DEPENDS=		devel/p5-Test-Exception \
			devel/p5-Test-Fatal \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
