# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:00 sthen Exp $

COMMENT-main =		secure and anonymous file-sharing over Tor
COMMENT-gui =		graphical user interface for onionshare based on Qt

GH_ACCOUNT =		micahflee
GH_PROJECT =		onionshare
GH_TAGNAME =		v${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	2.0
REVISION-main =		2
REVISION-gui =		2

PKGNAME-main =		onionshare-${MODPY_EGG_VERSION}
PKGNAME-gui =		onionshare-gui-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://onionshare.org/

MAINTAINER =		George Rosamond <george@nycbug.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -gui

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-sip${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			net/py-stem${MODPY_FLAVOR} \
			net/tor \
			security/py-cryptodome${MODPY_FLAVOR}
RUN_DEPENDS-gui =	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			net/onionshare=${MODPY_EGG_VERSION} \
			net/py-socks${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

# XXX: not yet working
NO_TEST =		Yes

.include <bsd.port.mk>
