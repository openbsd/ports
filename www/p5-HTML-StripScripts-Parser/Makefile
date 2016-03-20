# $OpenBSD: Makefile,v 1.7 2016/03/20 19:57:18 naddy Exp $

COMMENT =	XSS filter using HTML::Parser

DISTNAME =	HTML-StripScripts-Parser-1.03
REVISION =	0
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTML-StripScripts \
		www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
