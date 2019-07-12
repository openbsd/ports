# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:08 sthen Exp $

COMMENT =		launcher for the FS-UAE Amiga emulator

MODPY_EGG_VERSION =	2.4.0
REVISION =		1
DISTNAME =		fs-uae-launcher-${MODPY_EGG_VERSION}
CATEGORIES =		emulators x11
HOMEPAGE =		http://fs-uae.net
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://fs-uae.net/fs-uae/stable/${MODPY_EGG_VERSION}/

MODULES =		lang/python
RUN_DEPENDS =		emulators/fs-uae \
			x11/py-wxPython \
			devel/pygame \
			devel/py-six \
			x11/py-qt4

NO_TEST =		Yes

.include <bsd.port.mk>
