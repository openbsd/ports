# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:04 naddy Exp $

COMMENT =	persistent Markdown processor for Catalyst

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-Markdown-0.01
REVISION =	1
CATEGORIES =	textproc

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	CLACO

RUN_DEPENDS =	textproc/p5-Text-Markdown \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
