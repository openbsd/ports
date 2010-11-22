# $OpenBSD: Makefile,v 1.3 2010/11/22 08:36:51 espie Exp $

COMMENT =	XSS filter using HTML::Parser

DISTNAME =	HTML-StripScripts-Parser-1.03
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan
USE_GROFF =	Yes

RUN_DEPENDS =	www/p5-HTML-StripScripts \
		www/p5-HTML-Parser
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
