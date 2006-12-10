# $OpenBSD: Makefile,v 1.1.1.1 2006/12/10 12:21:43 espie Exp $

COMMENT=	"parse and validate simple name/value option pairs"

MODULES=	cpan
DISTNAME=	Data-OptList-0.101
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-Params-Util \
		::devel/p5-Sub-Install

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
