# $OpenBSD: Makefile,v 1.4 2009/06/22 13:12:49 dhill Exp $

COMMENT=	helper for installing code into packages

MODULES=	cpan
DISTNAME=	Sub-Install-0.925
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	PERL_TEST_CRITIC=Yes

REGRESS_DEPENDS=	::devel/p5-Test-Output \
			::devel/p5-Test-Perl-Critic

.include <bsd.port.mk>
