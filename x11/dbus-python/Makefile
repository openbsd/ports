#+ $OpenBSD: Makefile,v 1.46 2020/07/03 21:13:21 sthen Exp $

PORTROACH=		limitw:2,even

COMMENT-main =		dbus bindings for Python
COMMENT-common =	common files for py-dbus

V =			1.2.16
DISTNAME =		dbus-python-${V}
REVISION-main =		0

PKGNAME-main =		py-dbus-${V}
FULLPKGNAME-common =	py-dbus-common-${V}
FULLPKGPATH-common =	x11/dbus-python,-common

CATEGORIES =		x11

HOMEPAGE =		http://dbus.freedesktop.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC-like
PERMIT_PACKAGE =	Yes

WANTLIB-main += dbus-1 glib-2.0 iconv intl pthread

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
.endif

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
TEST_DEPENDS =		devel/py-gobject3${MODPY_FLAVOR}

pre-configure:
	sed -i "s,/bin/bash,/bin/sh,g" \
		${WRKSRC}/test/{TestSuitePythonService.service.in,run-test.sh}

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
