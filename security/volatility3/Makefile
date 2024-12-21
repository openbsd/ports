COMMENT =		volatile memory extraction framework

MODPY_DISTV =	2.7.0
DISTNAME =		volatility3-${MODPY_DISTV}
PKGNAME =		${DISTNAME}
REVISION =		0

CATEGORIES =		security
HOMEPAGE =		https://www.volatilityfoundation.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# VSL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

PORTHOME =		${WRKDIR}

# fixture 'image' not found
NO_TEST =		Yes

RUN_DEPENDS =		devel/capstone/python \
			security/py-cryptodome \
			security/py-pefile \
			security/yara/python

.include <bsd.port.mk>
