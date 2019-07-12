# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:53 sthen Exp $

COMMENT =	HTML to text conversion with links as footnotes

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	HTML-FormatText-WithLinks-0.15
CATEGORIES =	www textproc

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	www/p5-HTML-Format \
		www/p5-HTML-Tree \
		www/p5-URI

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
