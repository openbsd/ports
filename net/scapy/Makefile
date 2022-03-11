COMMENT =	powerful interactive packet manipulation in python

MODPY_EGG_VERSION =	2.4.4
REVISION =	2

DISTNAME =	scapy-${MODPY_EGG_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://scapy.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES0 =		https://spacehopper.org/mirrors/
DISTFILES =		${EXTRACT_ONLY} ethertypes-20120703:0
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
UPDATE_PLIST_ARGS =	-i MODPY_PY_PREFIX

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mcxx11}
# py-cryptography is only for architectures with newer compilers.
# it is not needed for all features; include the dependency
# where available but skip it on base-gcc architectures.
RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR}
.endif

pre-configure:
	sed -i "s,/etc/ethertypes,${SYSCONFDIR}/ethertypes,g" \
	    ${WRKSRC}/scapy/data.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scapy
	${INSTALL_DATA} ${DISTDIR}/ethertypes-20120703 \
	    ${PREFIX}/share/examples/scapy/ethertypes

.include <bsd.port.mk>
