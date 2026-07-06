COMMENT =		slixmpp is an elegant Python library for XMPP

MODPY_DISTV =		1.16.0
DISTNAME =		slixmpp-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools-rust
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm

RUN_DEPENDS =		devel/py-asn1 \
			devel/py-asn1-modules \
			net/py-aiodns \
			www/py-aiohttp

TEST_DEPENDS =		security/gnupg

post-extract:
	cp ${FILESDIR}/Cargo.lock ${WRKSRC}/

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} ./run_tests.py

.include "crates.inc"
.include <bsd.port.mk>
