# $OpenBSD: Makefile,v 1.33 2020/05/19 23:14:04 bluhm Exp $

COMMENT =	high-performance, dynamic web site authoring system

DISTNAME =	HTML-Mason-1.59

CATEGORIES =	www

HOMEPAGE =	http://www.masonhq.com/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Cache-Cache>=1.00 \
			devel/p5-Class-Container>=0.07 \
			devel/p5-Exception-Class>=1.15 \
			devel/p5-Log-Any>=0.08 \
			devel/p5-Params-Validate>=0.70 \
			www/ap2-mod_perl \
			www/p5-CGI>=2.46 \
			www/p5-HTML-Parser \
			www/p5-libapreq2
TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Memory-Cycle

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
