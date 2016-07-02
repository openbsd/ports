# $OpenBSD: Makefile,v 1.1.1.1 2016/07/02 15:55:23 danj Exp $

COMMENT =	subdomain scanner

VERSION = 	3.0.0

DISTNAME =	knockpy-${VERSION}

GH_ACCOUNT =	guelfoweb
GH_PROJECT =	knock
GH_TAGNAME = 	v${VERSION}

CATEGORIES =	security

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-dnspython

.include <bsd.port.mk>
