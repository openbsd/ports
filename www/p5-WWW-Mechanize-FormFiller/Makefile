# $OpenBSD: Makefile,v 1.1.1.1 2014/11/01 22:46:32 bluhm Exp $

COMMENT =		framework to automate HTML forms

DISTNAME =		WWW-Mechanize-FormFiller-0.11

CATEGORIES =		www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Data-Random>=0.05
TEST_DEPENDS =		devel/p5-File-Slurp \
			devel/p5-Test-Inline>0.15 \
			devel/p5-Test-MockObject \
			devel/p5-Test-Pod>=0.95 \
			www/p5-HTML-Form

.include <bsd.port.mk>
