# $OpenBSD: Makefile,v 1.9 2019/04/27 23:55:04 sthen Exp $

COMMENT =		Gnu All Mobile Management Utilities GUI

MODPY_EGG_VERSION = 	0.44
DISTNAME =		wammu-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		comms x11

HOMEPAGE =		https://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://dl.cihar.com/wammu/v0/

MODULES =		lang/python
MODPY_SETUPTOOLS = 	Yes

RUN_DEPENDS =		comms/py-gammu \
			devel/desktop-file-utils \
			x11/py-wxPython

NO_TEST = 		Yes

.include <bsd.port.mk>
