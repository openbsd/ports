COMMENT =		a library and tool that implements DKIM/ARC

MODPY_EGG_VERSION =	1.1.6
DISTNAME =		dkimpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		mail
HOMEPAGE =		https://launchpad.net/dkimpy

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# BSD
PERMIT_PACKAGE =	Yes

MODULES	=		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVOR =		python3
FLAVORS =		python3

RUN_DEPENDS =		mail/py-authres${MODPY_FLAVOR} \
			net/py-aiodns${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR} \
			security/py-PyNaCl${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rm -r ${PREFIX}/share/man

.include <bsd.port.mk>
