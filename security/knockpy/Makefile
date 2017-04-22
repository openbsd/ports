# $OpenBSD: Makefile,v 1.2 2017/04/22 07:36:27 rsadowski Exp $

COMMENT =	subdomain scanner

VERSION = 	4.0.0

DISTNAME =	knockpy-${VERSION}

GH_ACCOUNT =	guelfoweb
GH_PROJECT =	knock
GH_TAGNAME = 	${VERSION}

CATEGORIES =	security

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-dnspython

.include <bsd.port.mk>
