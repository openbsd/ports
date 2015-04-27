# $OpenBSD: Makefile,v 1.4 2015/04/27 19:38:21 afresh1 Exp $

COMMENT =	Template Renderer Plugin for Mojolicious

MODULES =	cpan
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
