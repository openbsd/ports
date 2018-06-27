# $OpenBSD: Makefile,v 1.16 2018/06/27 21:04:22 espie Exp $

COMMENT =	graphical documentation browser for Perl

DISTNAME =	podbrowser-0.12
REVISION=	10

CATEGORIES =	devel x11

HOMEPAGE =	https://podbrowser.googlecode.com/
MASTER_SITES =	http://jodrell.net/files/unsupported/podbrowser/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/p5-Locale-gettext \
		devel/xdg-utils \
		www/p5-HTML-Parser \
		www/p5-URI \
		x11/p5-Gtk2-Ex-PodViewer \
		x11/p5-Gtk2-GladeXML>=1.007p7 \
		x11/gtk+3,-guic

NO_TEST =	Yes

.include <bsd.port.mk>
