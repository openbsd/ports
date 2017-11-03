# $OpenBSD: Makefile,v 1.1.1.1 2017/11/03 13:34:32 bluhm Exp $

COMMENT =	convert POD to Markdown

DISTNAME =	Pod-Markdown-3.005

CATEGORIES =	textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
TEST_DEPENDS =		devel/p5-Test-Differences \
			www/p5-HTML-Parser

PKG_ARCH =		*

.include <bsd.port.mk>
