# $OpenBSD: Makefile,v 1.22 2020/07/03 21:13:19 sthen Exp $

COMMENT =		Python HTTP client library

MODPY_EGG_VERSION =	0.10.3
DISTNAME =		httplib2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		www net

HOMEPAGE =		https://github.com/jcgregorio/httplib2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		net/py-socks${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
post-patch:
	rm -r ${WRKSRC}/python${MODPY_MAJOR_VERSION}/httplib2.egg-info
.endif

post-install:
	ln -sf /etc/ssl/cert.pem \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/httplib2/cacerts.txt

do-test:
	cd ${WRKSRC}/python${MODPY_MAJOR_VERSION} && ${MODPY_BIN} httplib2test.py

.include <bsd.port.mk>
