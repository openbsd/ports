# $OpenBSD: Makefile,v 1.1.1.1 2009/09/05 08:44:15 landry Exp $

COMMENT =	graphical documentation browser for Perl

DISTNAME =	podbrowser-0.12
CATEGORIES =	devel x11

HOMEPAGE =	http://jodrell.net/projects/podbrowser
MASTER_SITES =	http://jodrell.net/files/podbrowser/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::x11/p5-Gtk2-GladeXML \
		::devel/p5-Locale-gettext \
		::x11/p5-Gtk2-Ex-PodViewer \
		::www/p5-HTML-Parser \
		::devel/desktop-file-utils \
		::devel/xdg-utils

.include <bsd.port.mk>
