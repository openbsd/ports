# $OpenBSD: Makefile,v 1.4 2016/12/18 12:31:02 kirby Exp $

COMMENT =		Gnu All Mobile Management Utilities GUI

MODPY_EGG_VERSION = 	0.43
DISTNAME =		wammu-${MODPY_EGG_VERSION}

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
