# $OpenBSD: Makefile,v 1.11 2009/03/25 01:32:17 martynas Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	2.0.9
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
