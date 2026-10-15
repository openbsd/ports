COMMENT=	install and run Python applications in isolated environments

MODPY_DISTV=	1.18.1
DISTNAME=	pipx-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	sysutils

# https://github.com/pypa/pipx
HOMEPAGE=	https://pypa.github.io/pipx/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

BUILD_DEPENDS=	textproc/py-docutils

# No test suites in pypi tarball. They are in git, but require extra prep
# (running a script to download wheels before running the tests).
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-argcomplete \
		sysutils/py-filelock \
		sysutils/py-packaging \
		sysutils/py-platformdirs \
		sysutils/py-userpath

.include <bsd.port.mk>
