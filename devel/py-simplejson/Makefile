# $OpenBSD: Makefile,v 1.20 2015/04/02 14:21:15 jasper Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://undefined.org/python/\#simplejson

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
TEST_DEPENDS =	devel/py-nose

WANTLIB +=		${MODPY_WANTLIB}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
