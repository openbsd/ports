COMMENT =		libpcap module for Python

# XXX unless development resumes, replace with pcapy-ng; dependent
# ports will need syncing. this will fail with py3.10.
# https://github.com/stamparm/pcapy-ng


MODPY_EGG_VERSION =	0.11.5.dev0
GH_ACCOUNT =		helpsystems
GH_PROJECT =		pcapy
GH_TAGNAME =		${MODPY_EGG_VERSION:S/.dev0//}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		net devel

# Apache
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB} ${COMPILER_LIBCXX} m pcap

COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

MAKE_ENV +=		LDSHARED="${CC} -shared -fPIC"
MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib"
TEST_DEPENDS =		${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/tests; ${MODPY_BIN} pcapytests.py

.include <bsd.port.mk>
