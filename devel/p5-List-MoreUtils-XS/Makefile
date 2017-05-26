# $OpenBSD: Makefile,v 1.1.1.1 2017/05/26 16:41:57 bluhm Exp $

COMMENT =	provide compiled List::MoreUtils functions

DISTNAME =	List-MoreUtils-XS-0.418

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5, Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c perl

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Config-AutoConf>=0.308 \
			sysutils/p5-Capture-Tiny
RUN_DEPENDS =		devel/p5-List-MoreUtils>0.417
TEST_DEPENDS =		devel/p5-Test-LeakTrace

post-extract:
		rm -r ${WRKSRC}/inc/inc_* ${WRKSRC}/inc/latest*

.include <bsd.port.mk>
