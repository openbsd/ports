# $OpenBSD: Makefile,v 1.5 2021/01/17 06:10:19 kmos Exp $

COMMENT =	subdomain scanner

MODPY_EGG_VERSION =	4.1
VERSION = 	4.1.0
REVISION =	0

DISTNAME =	knockpy-${VERSION}

GH_ACCOUNT =	guelfoweb
GH_PROJECT =	knock
GH_TAGNAME = 	${VERSION}

CATEGORIES =	security

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py2-dnspython

fix-plist: plist
	sed -i \
	's,site-packages/knock$${MODPY_PY_PREFIX},site-packages/knockpy-,' \
	${PKGDIR}/PLIST

.include <bsd.port.mk>
