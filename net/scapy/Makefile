COMMENT =	powerful interactive packet manipulation in python

MODPY_DISTV =	2.7.0
DISTNAME =	scapy-${MODPY_DISTV}

CATEGORIES =	net

HOMEPAGE =	https://scapy.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
UPDATE_PLIST_ARGS =	-i MODPY_PY_PREFIX
NO_TEST =		Yes

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
# py-cryptography is only available on architectures with Rust.
# it is not needed for all features; include the dependency
# where available but skip it on base-gcc architectures.
RUN_DEPENDS =		security/py-cryptography
.endif

.include <bsd.port.mk>
