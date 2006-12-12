# $OpenBSD: Makefile,v 1.1.1.1 2006/12/12 01:52:53 espie Exp $

COMMENT= 	"single-threaded Catalyst engine based on POE"

MODULES=	cpan
DISTNAME=	Catalyst-Engine-HTTP-POE-0.03
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-POE

#MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
