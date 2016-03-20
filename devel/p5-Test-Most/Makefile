# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:37 naddy Exp $

COMMENT =	most commonly needed test functions and features
DISTNAME =	Test-Most-0.34
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Exception-Class>=1.14 \
		devel/p5-Test-Deep>=0.106 \
		devel/p5-Test-Differences>=0.61 \
		devel/p5-Test-Exception>=0.31 \
		devel/p5-Test-Warn>=0.23

.include <bsd.port.mk>
