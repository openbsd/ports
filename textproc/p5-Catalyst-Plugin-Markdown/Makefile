# $OpenBSD: Makefile,v 1.7 2014/10/28 08:23:06 jasper Exp $

COMMENT =	persistent Markdown processor for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Markdown-0.01
REVISION =	1
CATEGORIES =	textproc
USE_GROFF =	Yes

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	CLACO

RUN_DEPENDS =	textproc/p5-Text-Markdown \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
