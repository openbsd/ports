# $OpenBSD: Makefile,v 1.2 2018/08/10 21:02:31 bluhm Exp $

COMMENT =	convert POD to Markdown

DISTNAME =	Pod-Markdown-3.101

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Differences \
			www/p5-HTML-Parser

PKG_ARCH =		*

.include <bsd.port.mk>
