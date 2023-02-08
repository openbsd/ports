COMMENT =	Python bindings for notmuch

PKGNAME =	py-notmuch-${V}
REVISION =	1

MODULES =	lang/python
MODPY_EGG_VERSION = ${V}
MODPY_PYBUILD =	setuptools

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	mail/notmuch/notmuch

WRKSRC =	${WRKDIST}/bindings/python

NO_TEST =	Yes

.include <bsd.port.mk>
