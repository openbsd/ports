# $OpenBSD: Makefile,v 1.1.1.1 2020/08/23 20:46:19 sthen Exp $

COMMENT =	Perl interface to Gtk+3

CPAN_AUTHOR =	XAOC
DISTNAME =	Gtk3-0.037

CATEGORIES =	x11

# LGPL v2.1
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Cairo-GObject>=1.0 \
			devel/p5-Glib-Object-Introspection>=0.043 \
			x11/gtk+3

PKG_ARCH =		*

.include <bsd.port.mk>
