COMMENT =		Python XMPP and Jabber implementation

MODPY_EGG_VERSION =	4.5.4
DISTNAME =		nbxmpp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net devel
REVISION =		0

HOMEPAGE =		https://python-nbxmpp.gajim.org/

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/glib2>=2.66.0 \
			devel/libsoup3 \
			devel/py-gobject3${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-precis_i18n${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
