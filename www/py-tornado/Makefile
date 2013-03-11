# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:48 espie Exp $

COMMENT =		scalable, non-blocking web server

MODPY_EGG_VERSION =	2.4.1
DISTNAME =		tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		http://www.tornadoweb.org/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://cloud.github.com/downloads/facebook/tornado/

MODULES =		lang/python

do-test:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} PYTHONPATH=.\
		${MODPY_BIN} ./tornado/test/runtests.py

.include <bsd.port.mk>
