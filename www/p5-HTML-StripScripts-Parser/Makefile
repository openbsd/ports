# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:45 espie Exp $

COMMENT =	XSS filter using HTML::Parser

DISTNAME =	HTML-StripScripts-Parser-1.03
REVISION =	0
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
USE_GROFF =	Yes

RUN_DEPENDS =	www/p5-HTML-StripScripts \
		www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
