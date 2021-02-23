# $OpenBSD: Makefile,v 1.6 2021/02/23 19:39:49 sthen Exp $

COMMENT =	compiz configuration manager

DISTNAME =	ccsm-0.8.4
REVISION =	3

MASTER_SITES =	http://releases.compiz.org/components/ccsm/

MODULES =	lang/python \
		textproc/intltool
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/compiz/compizconfig-python \
		x11/dbus-python \
		x11/gtk+3,-guic \
		x11/py-gtk2

.include <bsd.port.mk>
