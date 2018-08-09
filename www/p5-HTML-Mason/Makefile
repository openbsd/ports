# $OpenBSD: Makefile,v 1.30 2018/08/09 12:13:31 bluhm Exp $

COMMENT=	high-performance dynamic web authoring system

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Mason-1.58
CATEGORIES=	www

HOMEPAGE=	http://www.masonhq.com/

MAINTAINER =	Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	devel/p5-Cache-Cache>=1.00 \
		devel/p5-Class-Container>=0.07 \
		devel/p5-Exception-Class>=1.15 \
		devel/p5-Log-Any>=0.08 \
		devel/p5-Params-Validate>=0.70 \
		devel/p5-Test-Deep \
		www/ap2-mod_perl \
		www/p5-CGI>=2.46 \
		www/p5-HTML-Parser \
		www/p5-libapreq2
TEST_DEPENDS =	devel/p5-Test-Deep \
		devel/p5-Test-Memory-Cycle

MAKE_ENV=       TEST_POD=Yes

.include <bsd.port.mk>
