# $OpenBSD: Makefile,v 1.2 2006/12/10 12:46:01 espie Exp $

COMMENT=	"exporter on steroids"

MODULES=	cpan
DISTNAME=	Sub-Exporter-0.972
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Data-OptList \
		::devel/p5-Sub-Install

MAKE_ENV=	TEST_POD=Yes \
		PERL_TEST_CRITIC=Yes

REGRESS_DEPENDS=::devel/p5-Test-Perl-Critic

# Misses Package::Generator to run all tests

.include <bsd.port.mk>
