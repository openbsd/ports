# $OpenBSD: Makefile,v 1.17 2017/02/11 17:49:56 shadchin Exp $

COMMENT =		Python HTTP client library

MODPY_EGG_VERSION =	0.10.3
DISTNAME =		httplib2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www net

HOMEPAGE =		https://github.com/jcgregorio/httplib2

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		net/py-socks${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

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
