# $OpenBSD: Makefile,v 1.3 2010/06/18 17:49:21 landry Exp $

COMMENT =		Gtk2 widget for displaying Plain old Documentation (POD)

MODULES =		cpan
DISTNAME =		Gtk2-Ex-PodViewer-0.18
PKGNAME =		p5-${DISTNAME}p1
CATEGORIES =		x11

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

# No tests defined for Gtk2::Ex::PodViewer extension.
NO_REGRESS =		Yes

RUN_DEPENDS =	::x11/p5-Gtk2-Ex-Simple-List \
		::devel/p5-IO-stringy

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
