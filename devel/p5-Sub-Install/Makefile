# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:21 espie Exp $

COMMENT=	helper for installing code into packages

MODULES=	cpan
DISTNAME=	Sub-Install-0.925
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	PERL_TEST_CRITIC=Yes

TEST_DEPENDS=	devel/p5-Test-Output \
			devel/p5-Test-Perl-Critic

.include <bsd.port.mk>
