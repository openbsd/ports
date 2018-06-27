# $OpenBSD: Makefile,v 1.2 2018/06/27 21:04:00 espie Exp $

COMMENT-main =		secure and anonymous file-sharing over Tor
COMMENT-gui =		graphical user interface for onionshare based on Qt

GH_ACCOUNT =		micahflee
GH_PROJECT =		onionshare
GH_TAGNAME =		v${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	1.3

PKGNAME-main =		onionshare-${MODPY_EGG_VERSION}
PKGNAME-gui =		onionshare-gui-${MODPY_EGG_VERSION}
REVISION-gui =		0

CATEGORIES =		net

HOMEPAGE =		https://onionshare.org/

MAINTAINER =		George Rosamond <george@nycbug.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES =	-main -gui

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-sip${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			net/py-stem${MODPY_FLAVOR} \
			net/tor
RUN_DEPENDS-gui =	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			net/onionshare=${MODPY_EGG_VERSION} \
			x11/py-qt5${MODPY_FLAVOR}

# XXX: not yet working
NO_TEST =		Yes

.include <bsd.port.mk>
