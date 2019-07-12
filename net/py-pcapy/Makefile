# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:46 sthen Exp $

COMMENT =		libpcap module for Python

MODPY_EGG_VERSION =	0.11.1
GH_ACCOUNT =		CoreSecurity
GH_PROJECT =		pcapy
GH_TAGNAME =		${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		net devel

HOMEPAGE =		https://www.coresecurity.com/corelabs-research/open-source-tools/pcapy

# Apache
PERMIT_PACKAGE =	Yes

WANTLIB += 		${MODPY_WANTLIB} ${COMPILER_LIBCXX} m pcap

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

MAKE_ENV +=		LDSHARED="${CC} -shared -fPIC"
MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib"
TEST_DEPENDS =		${BASE_PKGPATH}

# fix msdos line-endings
pre-patch:
	cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

do-test:
	cd ${WRKSRC}/tests; ${MODPY_BIN} pcapytests.py

.include <bsd.port.mk>
