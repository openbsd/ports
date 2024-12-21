COMMENT-main =		secure and anonymous file-sharing over Tor
COMMENT-gui =		graphical user interface for onionshare based on Qt

GH_ACCOUNT =		micahflee
GH_PROJECT =		onionshare
GH_TAGNAME =		v${MODPY_DISTV}
MODPY_DISTV =	2.0
REVISION-main =		8
REVISION-gui =		8

PKGNAME-main =		onionshare-${MODPY_DISTV}
PKGNAME-gui =		onionshare-gui-${MODPY_DISTV}

CATEGORIES =		net

HOMEPAGE =		https://onionshare.org/

MAINTAINER =		George Rosamond <george@nycbug.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -gui

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-sip \
			www/py-flask \
			net/py-stem \
			net/tor \
			security/py-cryptodome
RUN_DEPENDS-gui =	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			net/onionshare=${MODPY_DISTV} \
			net/py-socks \
			x11/py-qt5

# XXX: not yet working
NO_TEST =		Yes

post-install:
	cd ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/usr/local; \
		find . -type d -exec mkdir -p ../../../../../{} ';' ; \
		find . -type f -exec mv {} ../../../../../{} ';' ; \
		cd ../..; find usr -type d -delete

.include <bsd.port.mk>
