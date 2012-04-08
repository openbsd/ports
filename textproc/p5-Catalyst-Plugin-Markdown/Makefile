# $OpenBSD: Makefile,v 1.5 2012/04/08 22:04:33 sthen Exp $

COMMENT =	persistent Markdown processor for Catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Plugin-Markdown-0.01
REVISION =	0
CATEGORIES =	textproc
USE_GROFF =	Yes

MAINTAINER =	Jim Razmus <jim@bonetruck.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =	CLACO

RUN_DEPENDS =	textproc/p5-Text-Markdown \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
