COMMENT =		common protobufs used in Google APIs

MODPY_DISTV =		1.75.2
DISTNAME =		googleapis_common_protos-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}
CATEGORIES =		net

HOMEPAGE =		https://docs.cloud.google.com/python/docs/reference

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-protobuf

.include <bsd.port.mk>
