# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:15 espie Exp $

COMMENT=	parse and validate simple name/value option pairs

MODULES=	cpan
DISTNAME=	Data-OptList-0.107
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-Params-Util \
		devel/p5-Sub-Install
TEST_DEPENDS=devel/p5-Test-Perl-Critic

MAKE_ENV=	TEST_POD=Yes \
		PERL_TEST_CRITIC=Yes

.include <bsd.port.mk>
