COMMENT=	virtual Python environment builder

MODPY_DISTV=	21.14.12
DISTNAME=	virtualenv-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://virtualenv.pypa.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

# messes up naming of packaged wheels
UPDATE_PLIST_ARGS=	-i MODPY_PY_PREFIX

RUN_DEPENDS=	devel/py-python-discovery>=1.6.1 \
		sysutils/py-distlib<1 \
		sysutils/py-filelock<5 \
		sysutils/py-packaging \
		sysutils/py-platformdirs<5
TEST_DEPENDS=	${BUILD_PKGPATH} \
		devel/py-coverage \
		devel/py-flaky \
		devel/py-test-mock \
		devel/py-test-timeout

# i think this shouldn't be needed as it seems like it should use the
# vendored copy, but pytest infrastructure in ports isn't finding it
TEST_DEPENDS+=	devel/py-pip

.include <bsd.port.mk>
