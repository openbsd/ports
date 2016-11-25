# $OpenBSD: Makefile,v 1.3 2016/11/25 14:42:29 ajacoutot Exp $

COMMENT =		Gnu All Mobile Management Utilities GUI

MODPY_EGG_VERSION = 	0.42
DISTNAME =		wammu-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		comms x11

HOMEPAGE =		http://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://dl.cihar.com/wammu/v0/

MODULES =		lang/python

RUN_DEPENDS =		comms/py-gammu \
			devel/desktop-file-utils \
			x11/py-wxPython

NO_TEST = 		Yes

PKG_ARCH = 		*

.include <bsd.port.mk>
