# $OpenBSD: Makefile,v 1.1.1.1 2014/11/01 22:50:06 bluhm Exp $

COMMENT =		source constants from POD to avoid repetition

DISTNAME =		Pod-Constant-0.1

CATEGORIES =		devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-NoTabs \
			devel/p5-Test-Pod>=1.41 \
			devel/p5-Test-Warn

.include <bsd.port.mk>
