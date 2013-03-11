# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:43 espie Exp $

COMMENT =	persistent Markdown processor for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Markdown-0.01
REVISION =	0
CATEGORIES =	textproc
USE_GROFF =	Yes

MAINTAINER =	Jim Razmus <jim@bonetruck.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	CLACO

RUN_DEPENDS =	textproc/p5-Text-Markdown \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
