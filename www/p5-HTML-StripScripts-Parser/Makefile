# $OpenBSD: Makefile,v 1.8 2019/07/12 20:50:54 sthen Exp $

COMMENT =	XSS filter using HTML::Parser

DISTNAME =	HTML-StripScripts-Parser-1.03
REVISION =	0
CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTML-StripScripts \
		www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
