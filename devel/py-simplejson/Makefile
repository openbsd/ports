# $OpenBSD: Makefile,v 1.12 2009/10/11 20:59:37 jasper Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	2.0.9
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}p0

CATEGORIES =		devel

HOMEPAGE =		http://undefined.org/python/\#simplejson

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/simplejson/}

MODULES =		lang/python
REGRESS_DEPENDS =	::devel/py-nose

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-simplejson
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-simplejson

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
