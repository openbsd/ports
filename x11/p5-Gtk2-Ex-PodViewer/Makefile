# $OpenBSD: Makefile,v 1.12 2019/07/17 14:39:44 danj Exp $

COMMENT =		Gtk2 widget for displaying Plain old Documentation (POD)

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Gtk2-Ex-PodViewer-0.18
REVISION =		3
CATEGORIES =		x11

# Perl
PERMIT_PACKAGE =	Yes

# No tests defined for Gtk2::Ex::PodViewer extension.
NO_TEST =		Yes

RUN_DEPENDS =	x11/p5-Gtk2-Ex-Simple-List \
		devel/p5-IO-stringy

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
