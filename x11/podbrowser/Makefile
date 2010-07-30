# $OpenBSD: Makefile,v 1.5 2010/07/30 06:58:59 ajacoutot Exp $

COMMENT =	graphical documentation browser for Perl

DISTNAME =	podbrowser-0.12
REVISION=	2

CATEGORIES =	devel x11

HOMEPAGE =	http://code.google.com/p/podbrowser/
MASTER_SITES =	http://jodrell.net/files/unsupported/podbrowser/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::x11/p5-Gtk2-GladeXML \
		::devel/p5-Locale-gettext \
		::x11/p5-Gtk2-Ex-PodViewer \
		::www/p5-HTML-Parser \
		::www/p5-URI \
		::devel/desktop-file-utils \
		::devel/xdg-utils

.include <bsd.port.mk>
