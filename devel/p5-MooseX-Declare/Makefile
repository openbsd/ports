# $OpenBSD: Makefile,v 1.1.1.1 2010/01/12 09:44:05 jasper Exp $

COMMENT=		declarative syntax for Moose

DISTNAME=		MooseX-Declare-0.32

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-List-MoreUtils \
			::devel/p5-MooseX-Method-Signatures \
			::devel/p5-MooseX-Role-Parameterized \
			::devel/p5-MooseX-Types \
			::devel/p5-namespace-autoclean

REGRESS_DEPENDS=	::devel/p5-Test-Exception \
			::devel/p5-Test-NoWarnings

.include <bsd.port.mk>
