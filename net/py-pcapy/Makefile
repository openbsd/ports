# $OpenBSD: Makefile,v 1.12 2016/10/31 16:01:22 phessler Exp $

COMMENT =		libpcap module for Python

MODPY_EGG_VERSION =	0.10.10
GH_ACCOUNT =		CoreSecurity
GH_PROJECT =		pcapy
GH_TAGNAME =		${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net devel

HOMEPAGE =		https://www.coresecurity.com/corelabs-research/open-source-tools/pcapy

# Apache
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		${MODPY_WANTLIB} m stdc++ pcap

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

MAKE_ENV +=		LDSHARED="${CC} -shared -fPIC"
MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib"

# fix msdos line-endings
pre-patch:
	cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
