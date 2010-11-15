# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:05 espie Exp $

COMMENT=	helper for installing code into packages

MODULES=	cpan
DISTNAME=	Sub-Install-0.925
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	PERL_TEST_CRITIC=Yes

REGRESS_DEPENDS=	devel/p5-Test-Output \
			devel/p5-Test-Perl-Critic

.include <bsd.port.mk>
