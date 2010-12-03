# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:29 ajacoutot Exp $

COMMENT=	parse and validate simple name/value option pairs

MODULES=	cpan
DISTNAME=	Data-OptList-0.104
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	devel/p5-Params-Util \
		devel/p5-Sub-Install
REGRESS_DEPENDS=devel/p5-Test-Perl-Critic

MAKE_ENV=	TEST_POD=Yes \
		PERL_TEST_CRITIC=Yes

.include <bsd.port.mk>
