COMMENT =		Python XMPP and Jabber implementation

MODPY_DISTV =	5.0.4
DISTNAME =		nbxmpp-${MODPY_DISTV}
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
			devel/py-gobject3 \
			net/py-idna \
			sysutils/py-packaging \
			textproc/py-precis_i18n

.include <bsd.port.mk>
