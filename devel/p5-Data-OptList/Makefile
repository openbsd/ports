# $OpenBSD: Makefile,v 1.4 2008/10/03 13:36:25 jasper Exp $

COMMENT=	parse and validate simple name/value option pairs

MODULES=	cpan
DISTNAME=	Data-OptList-0.103
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-Params-Util \
		::devel/p5-Sub-Install
REGRESS_DEPENDS=::devel/p5-Test-Perl-Critic

MAKE_ENV=	TEST_POD=Yes \
		PERL_TEST_CRITIC=Yes

.include <bsd.port.mk>
