# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:55 espie Exp $

COMMENT =	HTML to text conversion with links as footnotes

MODULES =	cpan
DISTNAME =	HTML-FormatText-WithLinks-0.11
CATEGORIES =	www textproc
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	::www/p5-HTML-Format \
		::www/p5-HTML-Tree \
		::www/p5-URI

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
