COMMENT =		utility to create projects from templates

MODPY_DISTV =	2.6.0
DISTNAME =		cookiecutter-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-arrow \
			devel/py-binaryornot>=0.4.4 \
			devel/py-click>=7.0,<9.0.0 \
			devel/py-python-slugify>=4.0.0 \
			devel/py-rich \
			textproc/py-yaml>=5.3.1 \
			www/py-jinja2>=2.7,<4.0.0 \
			www/py-jinja2-time>=0.2.0 \
			www/py-requests>=2.23.0

TEST_DEPENDS =		devel/git \
			devel/py-test-mock \
			devel/py-test-cov \
			devel/py-freezegun

PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
