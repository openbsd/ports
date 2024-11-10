COMMENT =		command-line tool to access B2 cloud storage

MODPY_EGG_VERSION =	4.2.0

DISTNAME =		b2-${MODPY_EGG_VERSION}
PKGNAME =		backblaze-${DISTNAME}

CATEGORIES =		sysutils

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		pdm

RUN_DEPENDS =		devel/py-argcomplete${MODPY_FLAVOR} \
			devel/py-arrow${MODPY_FLAVOR} \
			devel/py-phx-class-registry${MODPY_FLAVOR} \
			devel/py-tabulate${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			net/py-b2sdk${MODPY_FLAVOR} \
			sysutils/py-platformdirs${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR} \
			textproc/py-rst2ansi${MODPY_FLAVOR}

# no tests in pypi package
NO_TEST =		Yes

# rename b2 to avoid conflict with boost's b2
post-install:
	@mv ${PREFIX}/bin/b2 ${PREFIX}/bin/backblaze-b2

.include <bsd.port.mk>
