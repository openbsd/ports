# $OpenBSD: Makefile,v 1.2 2014/11/12 10:07:25 benoit Exp $

COMMENT =	Template Renderer Plugin for Mojolicious

MODULES =	cpan
DISTNAME =	Mojolicious-Plugin-TtRenderer-1.53
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	PLICEASE

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS =	sysutils/p5-Capture-Tiny \
		textproc/p5-Template \
		www/p5-Mojo

.include <bsd.port.mk>
