# $OpenBSD: Makefile,v 1.7 2015/01/05 17:29:25 benoit Exp $

COMMENT =	HTML to text conversion with links as footnotes

MODULES =	cpan
DISTNAME =	HTML-FormatText-WithLinks-0.15
CATEGORIES =	www textproc

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	www/p5-HTML-Format \
		www/p5-HTML-Tree \
		www/p5-URI

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
