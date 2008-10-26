# $OpenBSD: Makefile,v 1.3 2008/10/26 16:40:07 ajacoutot Exp $

COMMENT= 	single-threaded Catalyst engine based on POE

MODULES=	cpan
DISTNAME=	Catalyst-Engine-HTTP-POE-0.08
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-POE

REGRESS_DEPENDS= ::devel/p5-Test-Pod-Coverage \
		::devel/p5-Test-Pod

REGRESS_FLAGS=	TEST_POD=Yes

CONFIGURE_ARGS=	--skip

.include <bsd.port.mk>
