# $OpenBSD: Makefile,v 1.3 2017/01/03 19:27:52 landry Exp $

COMMENT =		snowball stemming algorithms, for information retrieval

MODPY_EGG_VERSION =	1.3.0
REVISION =		1
DISTNAME =		PyStemmer-${MODPY_EGG_VERSION}
PKGNAME =		py-stemmer-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT/BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

pre-test:
	@${MODPY_CMD} build_ext --inplace

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} runtests.py

.include <bsd.port.mk>
