COMMENT =		memory-efficient hashtable with serialization

MODPY_EGG_VERSION =	0.0.2
DISTNAME =		borghash-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/borgbackup/borghash

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

# tests not included in pypi tarball
NO_TEST	=		Yes

.include <bsd.port.mk>
