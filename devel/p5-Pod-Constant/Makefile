# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:32 naddy Exp $

COMMENT =		source constants from POD to avoid repetition

DISTNAME =		Pod-Constant-0.1

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-NoTabs \
			devel/p5-Test-Pod>=1.41 \
			devel/p5-Test-Warn

.include <bsd.port.mk>
