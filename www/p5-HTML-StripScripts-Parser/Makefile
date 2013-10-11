# $OpenBSD: Makefile,v 1.6 2013/10/11 23:51:39 naddy Exp $

COMMENT =	XSS filter using HTML::Parser

DISTNAME =	HTML-StripScripts-Parser-1.03
REVISION =	0
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	www/p5-HTML-StripScripts \
		www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
