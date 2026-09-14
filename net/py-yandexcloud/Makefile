COMMENT =		offical Yandex Cloud SDK
MODPY_DISTV =		0.404.0
DISTNAME =		yandexcloud-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://yandex.cloud/en/docs/functions/lang/python/sdk

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-deprecated \
			devel/py-protobuf \
			devel/py-six \
			net/py-googleapis-common-protos \
			net/py-grpcio \
			net/py-grpcio-tools \
			security/py-cryptography \
			www/py-jwt \
			www/py-requests

.include <bsd.port.mk>
