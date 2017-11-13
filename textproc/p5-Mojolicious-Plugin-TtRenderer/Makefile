# $OpenBSD: Makefile,v 1.6 2017/11/13 07:28:41 remi Exp $

COMMENT =	Template Renderer Plugin for Mojolicious

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Mojolicious-Plugin-TtRenderer-1.59
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	PLICEASE

RUN_DEPENDS =	sysutils/p5-Capture-Tiny \
		textproc/p5-Template \
		www/p5-Mojo>=6.33

.include <bsd.port.mk>
