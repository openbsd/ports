COMMENT =		memory-efficient hashtable with serialization

MODPY_DISTV =		0.1.0
DISTNAME =		borghash-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/borgbackup/borghash

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

# tests not included in pypi tarball
NO_TEST	=		Yes

.include <bsd.port.mk>
