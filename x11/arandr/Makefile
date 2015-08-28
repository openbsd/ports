# $OpenBSD: Makefile,v 1.3 2015/08/28 16:37:18 jca Exp $

COMMENT =		xrandr gui
MODPY_EGG_VERSION =	0.1.8
DISTNAME =		arandr-${MODPY_EGG_VERSION}
CATEGORIES =		x11 sysutils
HOMEPAGE =		http://christian.amsuess.com/tools/arandr/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://christian.amsuess.com/tools/arandr/files/

MODULES =		lang/python
RUN_DEPENDS =		x11/py-gtk2 \
			devel/desktop-file-utils
BUILD_DEPENDS =		devel/gettext-tools \
			textproc/py-docutils

NO_TEST =		Yes

.include <bsd.port.mk>
