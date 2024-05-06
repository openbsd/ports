COMMENT=	install and run Python applications in isolated environments

MODPY_EGG_VERSION=	1.5.0
DISTNAME=	pipx-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	sysutils
REVISION=	1

# https://github.com/pypa/pipx
HOMEPAGE=	https://pypa.github.io/pipx/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

FLAVORS=	python3
FLAVOR=		python3

# No test suites in pypi tarball. They are in git, but require extra prep
# (running a script to download wheels before running the tests).
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-argcomplete${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		sysutils/py-platformdirs${MODPY_FLAVOR} \
		sysutils/py-userpath${MODPY_FLAVOR}

.include <bsd.port.mk>
