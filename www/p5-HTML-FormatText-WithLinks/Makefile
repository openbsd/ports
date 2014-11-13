# $OpenBSD: Makefile,v 1.6 2014/11/13 10:00:32 benoit Exp $

COMMENT =	HTML to text conversion with links as footnotes

MODULES =	cpan
DISTNAME =	HTML-FormatText-WithLinks-0.14
CATEGORIES =	www textproc
USE_GROFF =	Yes

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	www/p5-HTML-Format \
		www/p5-HTML-Tree \
		www/p5-URI

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
