# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:48 sthen Exp $

COMMENT =	convert POD to Markdown

DISTNAME =	Pod-Markdown-3.200
REVISION =	0

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		www/p5-HTML-Parser \
			www/p5-URI
TEST_DEPENDS =		devel/p5-Test-Differences

PKG_ARCH =		*

.include <bsd.port.mk>
