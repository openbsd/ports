# $OpenBSD: Makefile,v 1.1.1.1 2006/12/10 12:26:46 espie Exp $

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

MAKE_ENV=	TEST_POD=Yes

# Misses test-perl-critic and Package::Generator to run all tests

.include <bsd.port.mk>
