# $OpenBSD: Makefile,v 1.2 2009/09/05 09:03:52 landry Exp $

COMMENT =		Gtk2 widget for displaying Plain old Documentation (POD)

MODULES =		cpan
DISTNAME =		Gtk2-Ex-PodViewer-0.18
PKGNAME =		${DISTNAME}p0
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
