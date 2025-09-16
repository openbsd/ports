COMMENT =		documentation generator for Ansible roles/collections

MODPY_DISTV =		0.7.25
DISTNAME =		docsible-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/docsible/docsible

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

MODULES =		lang/python

RUN_DEPENDS =		devel/py-click \
			textproc/py-yaml \
			www/py-jinja2

NO_TEST =		Yes

.include <bsd.port.mk>
