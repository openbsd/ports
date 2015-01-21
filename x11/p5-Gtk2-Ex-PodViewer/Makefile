# $OpenBSD: Makefile,v 1.9 2015/01/21 14:43:34 sthen Exp $

COMMENT =		Gtk2 widget for displaying Plain old Documentation (POD)

MODULES =		cpan
DISTNAME =		Gtk2-Ex-PodViewer-0.18
REVISION =		2
CATEGORIES =		x11

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

# No tests defined for Gtk2::Ex::PodViewer extension.
NO_TEST =		Yes

RUN_DEPENDS =	x11/p5-Gtk2-Ex-Simple-List \
		devel/p5-IO-stringy

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
