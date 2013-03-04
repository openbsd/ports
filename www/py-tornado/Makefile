# $OpenBSD: Makefile,v 1.6 2013/03/04 06:13:35 rpointel Exp $

COMMENT =		scalable, non-blocking web server

MODPY_EGG_VERSION =	2.4.1
DISTNAME =		tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		http://www.tornadoweb.org/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://cloud.github.com/downloads/facebook/tornado/

MODULES =		lang/python

do-regress:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} PYTHONPATH=.\
		${MODPY_BIN} ./tornado/test/runtests.py

.include <bsd.port.mk>
