# $OpenBSD: Makefile,v 1.6 2009/02/01 00:58:47 simon Exp $

COMMENT=	exporter on steroids

MODULES=	cpan
DISTNAME=	Sub-Exporter-0.982
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Data-OptList \
		::devel/p5-Params-Util \
		::devel/p5-Sub-Install

MAKE_ENV=	TEST_POD=Yes \
		PERL_TEST_CRITIC=Yes

REGRESS_DEPENDS=::devel/p5-Package-Generator \
		::devel/p5-Test-Perl-Critic

.include <bsd.port.mk>
