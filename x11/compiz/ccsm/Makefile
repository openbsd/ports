# $OpenBSD: Makefile,v 1.1 2013/12/03 00:52:03 fgsch Exp $

COMMENT =	compiz configuration manager

DISTNAME =	ccsm-0.8.4

MASTER_SITES =	http://releases.compiz.org/components/ccsm/

MODULES =	lang/python \
		textproc/intltool

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/compiz/compizconfig-python \
		x11/dbus-python \
		x11/gtk+2,-guic \
		x11/py-gtk2

.include <bsd.port.mk>
