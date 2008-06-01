# $OpenBSD: Makefile,v 1.1.1.1 2008/06/01 16:32:30 simon Exp $

COMMENT =	persistent Markdown processor for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Markdown-0.01
CATEGORIES =	textproc

MAINTAINER =	Jim Razmus <jim@bonetruck.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =	CLACO

RUN_DEPENDS =	::textproc/p5-Text-Markdown \
		::www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
