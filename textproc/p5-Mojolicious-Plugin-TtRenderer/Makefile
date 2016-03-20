# $OpenBSD: Makefile,v 1.5 2016/03/20 19:57:06 naddy Exp $

COMMENT =	Template Renderer Plugin for Mojolicious

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Mojolicious-Plugin-TtRenderer-1.56
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	PLICEASE

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS =	sysutils/p5-Capture-Tiny \
		textproc/p5-Template \
		www/p5-Mojo

.include <bsd.port.mk>
