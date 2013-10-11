# $OpenBSD: Makefile,v 1.9 2013/10/11 23:49:13 naddy Exp $

COMMENT=	helper for installing code into packages

MODULES=	cpan
DISTNAME=	Sub-Install-0.925
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	PERL_TEST_CRITIC=Yes

TEST_DEPENDS=	devel/p5-Test-Output \
			devel/p5-Test-Perl-Critic

.include <bsd.port.mk>
