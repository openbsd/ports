# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:46 espie Exp $

COMMENT =		add encoding to HTTP::Response

DISTNAME =		HTTP-Response-Encoding-0.06
REVISION =		0

CATEGORIES =		www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
USE_GROFF =		Yes
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/p5-libwww
TEST_DEPENDS =	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage \
			www/p5-URI

.include <bsd.port.mk>
