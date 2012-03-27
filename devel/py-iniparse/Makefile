# $OpenBSD: Makefile,v 1.1.1.1 2012/03/27 18:19:39 rpointel Exp $

COMMENT =		INI parser for Python

MODPY_EGG_VERSION =	0.4
DISTNAME =		iniparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://code.google.com/p/iniparse/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=i/iniparse/}

MODULES =		lang/python

REGRESS_DEPENDS =		lang/python/${MODPY_VERSION},-tests

do-regress:
	cd ${WRKSRC} &&  ${SETENV} ${MAKE_ENV} \
		${MODPY_BIN} runtests.py

.include <bsd.port.mk>
