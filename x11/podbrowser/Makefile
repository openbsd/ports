# $OpenBSD: Makefile,v 1.10 2012/06/15 08:30:24 ajacoutot Exp $

COMMENT =	graphical documentation browser for Perl

DISTNAME =	podbrowser-0.12
REVISION=	5

CATEGORIES =	devel x11

HOMEPAGE =	http://podbrowser.googlecode.com/
MASTER_SITES =	http://jodrell.net/files/unsupported/podbrowser/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/p5-Locale-gettext \
		devel/xdg-utils \
		www/p5-HTML-Parser \
		www/p5-URI \
		x11/p5-Gtk2-Ex-PodViewer \
		x11/p5-Gtk2-GladeXML \
		x11/gtk+2,-guic

NO_REGRESS =	Yes

.include <bsd.port.mk>
