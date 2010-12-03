# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:35 ajacoutot Exp $

COMMENT=	helper for installing code into packages

MODULES=	cpan
DISTNAME=	Sub-Install-0.925
REVISION=	0
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
