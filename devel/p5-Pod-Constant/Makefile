# $OpenBSD: Makefile,v 1.4 2020/07/03 21:45:06 sthen Exp $

COMMENT =		source constants from POD to avoid repetition

DISTNAME =		Pod-Constant-0.1
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-NoTabs \
			devel/p5-Test-Pod>=1.41 \
			devel/p5-Test-Warn

.include <bsd.port.mk>
