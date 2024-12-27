COMMENT =	powerful interactive packet manipulation in python

# some /usr/src/regress checks need fixing for 2.5+
MODPY_DISTV =	2.4.5
REVISION =	2

DISTNAME =	scapy-${MODPY_DISTV}

CATEGORIES =	net

HOMEPAGE =	https://scapy.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

SITES.data =		https://spacehopper.org/mirrors/
DISTFILES.data =	ethertypes-20120703
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
UPDATE_PLIST_ARGS =	-i MODPY_PY_PREFIX
NO_TEST =		Yes

BUILD_DEPENDS =		devel/py-six

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
# py-cryptography is only available on architectures with Rust.
# it is not needed for all features; include the dependency
# where available but skip it on base-gcc architectures.
RUN_DEPENDS =		security/py-cryptography
.endif

post-extract:
	cp ${MODPY_SITEPKG}/six.py ${WRKSRC}/scapy/modules/six.py # override bundled six.py, not compatible with 3.12

pre-configure:
	sed -i "s,/etc/ethertypes,${SYSCONFDIR}/ethertypes,g" \
	    ${WRKSRC}/scapy/data.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scapy
	${INSTALL_DATA} ${DISTDIR}/ethertypes-20120703 \
	    ${PREFIX}/share/examples/scapy/ethertypes

.include <bsd.port.mk>
