# $OpenBSD: Makefile,v 1.2 2014/09/22 13:35:43 ajacoutot Exp $

COMMENT =	messagepack (de)serializer

MODPY_EGG_VERSION =	0.4.2
DISTNAME =	msgpack-python-${MODPY_EGG_VERSION}
PKGNAME =	py-msgpack-${MODPY_EGG_VERSION}

CATEGORIES =	net textproc

HOMEPAGE =	http://msgpack.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=m/msgpack-python/}

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
WANTLIB +=	${MODPY_WANTLIB} m pthread stdc++

TEST_DEPENDS =	devel/py-test \
		devel/py-nose \
		devel/py-six

do-test:
	@cd ${WRKSRC} && nosetests test

.include <bsd.port.mk>
