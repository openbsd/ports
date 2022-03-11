PORTROACH=		limitw:2,even

COMMENT-main =		dbus bindings for Python
COMMENT-common =	common files for py-dbus

V =			1.2.18
DISTNAME =		dbus-python-${V}

PKGNAME-main =		py-dbus-${V}
FULLPKGNAME-common =	py-dbus-common-${V}
FULLPKGPATH-common =	x11/dbus-python,-common
REVISION-common =	0

CATEGORIES =		x11

HOMEPAGE =		http://dbus.freedesktop.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC-like
PERMIT_PACKAGE =	Yes

WANTLIB-main += dbus-1 execinfo glib-2.0 iconv intl pthread

WANTLIB-common +=	#empty

MASTER_SITES =		${HOMEPAGE}releases/dbus-python/

MULTI_PACKAGES =	-main -common

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

USE_GMAKE =		Yes

.if ${FLAVOR:Mpython3}
FULLPKGNAME-main =	${PKGNAME-main:S/^py-/py3-/}
FULLPKGPATH-main =	x11/dbus-python,-main${MODPY_FLAVOR}
TEST_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR}
.else
# dbus/gobject_service.py:
# dbus.gobject_service is deprecated, and is not available under Python 3.
# Porting from gobject (PyGObject 2) to gi.repository.GObject (PyGObject 3),
# and using dbus.gi_service instead of dbus.gobject_service, is recommended.
NO_TEST =		Yes
.endif
REVISION-main =		0

LIB_DEPENDS-main =	devel/glib2 \
			x11/dbus

RUN_DEPENDS-main =	${MODPY_RUN_DEPENDS} \
			x11/dbus-python,-common

LIB_DEPENDS-common =	#empty
# we don't want to own include/dbus-1.0/ and include/dbus-1.0/dbus/
RUN_DEPENDS-common =	x11/dbus

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-documentation

TEST_FLAGS =		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	sed -i "s,/bin/bash,/bin/sh,g" \
		${WRKSRC}/test/{TestSuitePythonService.service.in,run-test.sh}

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
