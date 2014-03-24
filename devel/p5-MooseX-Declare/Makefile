# $OpenBSD: Makefile,v 1.8 2014/03/24 09:14:55 jasper Exp $

COMMENT=		declarative syntax for Moose

DISTNAME=		MooseX-Declare-0.38

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-MooseX-Method-Signatures>=0.37 \
			devel/p5-MooseX-Role-Parameterized \
			devel/p5-MooseX-Types \
			devel/p5-namespace-autoclean

TEST_DEPENDS=		devel/p5-Test-Exception \
			devel/p5-Test-Fatal \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
