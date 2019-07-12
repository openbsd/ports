# $OpenBSD: Makefile,v 1.3 2019/07/12 20:50:05 sthen Exp $

COMMENT =	convert POD to Markdown

DISTNAME =	Pod-Markdown-3.101

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5
PERMIT_PACKAGE =	Yes

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Differences \
			www/p5-HTML-Parser

PKG_ARCH =		*

.include <bsd.port.mk>
