# $OpenBSD: Makefile,v 1.6 2020/07/03 21:44:58 sthen Exp $

COMMENT =	provide compiled List::MoreUtils functions

DISTNAME =	List-MoreUtils-XS-0.428
REVISION =	0

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5, Apache 2.0, BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Config-AutoConf>=0.315 \
			sysutils/p5-Capture-Tiny
TEST_DEPENDS =		devel/p5-Test-LeakTrace \
			devel/p5-List-MoreUtils>=0.423

post-extract:
		rm -r ${WRKSRC}/inc/inc_* ${WRKSRC}/inc/latest*

.include <bsd.port.mk>
