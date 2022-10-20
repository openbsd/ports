COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	3.2.4
DISTNAME =		nbxmpp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net devel

HOMEPAGE =		https://python-nbxmpp.gajim.org/

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=n/nbxmpp/}

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test

RUN_DEPENDS =		devel/glib2>=2.6.0 \
			devel/libsoup \
			devel/py-gobject3${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-precis_i18n${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
