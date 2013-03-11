# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:26 espie Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://undefined.org/python/\#simplejson

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/simplejson/}

MODULES =		lang/python
TEST_DEPENDS =	devel/py-nose

WANTLIB +=		${MODPY_WANTLIB}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
