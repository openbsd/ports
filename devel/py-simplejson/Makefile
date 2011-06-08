# $OpenBSD: Makefile,v 1.16 2011/06/08 17:39:25 jasper Exp $

COMMENT =		JSON encoder/decoder

MODPY_EGG_VERSION =	2.0.9
DISTNAME =		simplejson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

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
REGRESS_DEPENDS =	devel/py-nose

MODPY_SETUPTOOLS =	Yes

WANTLIB +=		${MODPY_WANTLIB}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-simplejson
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-simplejson

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
