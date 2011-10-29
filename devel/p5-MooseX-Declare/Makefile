# $OpenBSD: Makefile,v 1.5 2011/10/29 16:43:57 jasper Exp $

COMMENT=		declarative syntax for Moose

DISTNAME=		MooseX-Declare-0.35

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-MooseX-Method-Signatures>=0.37 \
			devel/p5-MooseX-Role-Parameterized \
			devel/p5-MooseX-Types \
			devel/p5-namespace-autoclean

REGRESS_DEPENDS=	devel/p5-Test-Exception \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
