# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:20 naddy Exp $

COMMENT =		add encoding to HTTP::Response

DISTNAME =		HTTP-Response-Encoding-0.06
REVISION =		0

CATEGORIES =		www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/p5-libwww
TEST_DEPENDS =	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage \
			www/p5-URI

.include <bsd.port.mk>
