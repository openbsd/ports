# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:45 espie Exp $

COMMENT =	HTML to text conversion with links as footnotes

MODULES =	cpan
DISTNAME =	HTML-FormatText-WithLinks-0.11
REVISION =	0
CATEGORIES =	www textproc
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	www/p5-HTML-Format \
		www/p5-HTML-Tree \
		www/p5-URI

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
