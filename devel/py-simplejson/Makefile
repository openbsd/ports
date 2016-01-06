# $OpenBSD: Makefile,v 1.22 2016/01/06 17:01:54 ajacoutot Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://undefined.org/python/\#simplejson

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODPY_PI =		Yes

MODULES =		lang/python
TEST_DEPENDS =	devel/py-nose

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
