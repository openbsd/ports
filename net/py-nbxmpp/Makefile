COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	2.0.4
DISTNAME =		nbxmpp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net devel

HOMEPAGE =		https://python-nbxmpp.gajim.org/

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=n/nbxmpp/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS=		devel/glib2>=2.6.0 \
			devel/libsoup \
			devel/py-gobject3${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			textproc/py-precis_i18n${MODPY_FLAVOR}

NO_TEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
