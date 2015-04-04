# $OpenBSD: Makefile,v 1.3 2015/04/04 09:21:04 ajacoutot Exp $

COMMENT =	compiz configuration manager

DISTNAME =	ccsm-0.8.4
REVISION =	1

MASTER_SITES =	http://releases.compiz.org/components/ccsm/

MODULES =	lang/python \
		textproc/intltool

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/compiz/compizconfig-python \
		x11/dbus-python \
		x11/gtk+3,-guic \
		x11/py-gtk2

.include <bsd.port.mk>
