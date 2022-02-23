# $OpenBSD: Makefile,v 1.1 2022/02/23 18:23:07 bket Exp $

MODPY_EGG_VERSION =	1.2.0

WANTLIB =		pthread

BUILD_DEPENDS =		devel/py-pkgconfig${MODPY_FLAVOR}
RUN_DEPENDS =		net/py-msgpack${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
