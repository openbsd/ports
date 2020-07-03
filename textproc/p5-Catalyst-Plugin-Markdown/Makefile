# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:45 sthen Exp $

COMMENT =	persistent Markdown processor for Catalyst

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Plugin-Markdown-0.01
REVISION =	3
CATEGORIES =	textproc

# Same as Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =	CLACO

RUN_DEPENDS =	textproc/p5-Text-Markdown \
		www/p5-Catalyst-Runtime

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
