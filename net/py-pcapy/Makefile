# $OpenBSD: Makefile,v 1.26 2021/11/02 00:01:41 sthen Exp $

COMMENT =		libpcap module for Python

MODPY_EGG_VERSION =	0.11.5
GH_ACCOUNT =		helpsystems
GH_PROJECT =		pcapy
GH_TAGNAME =		${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net devel

# Apache
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB} ${COMPILER_LIBCXX} m pcap

COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

MAKE_ENV +=		LDSHARED="${CC} -shared -fPIC"
MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib"
TEST_DEPENDS =		${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/tests; ${MODPY_BIN} pcapytests.py

.include <bsd.port.mk>
