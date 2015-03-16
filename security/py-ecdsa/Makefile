# $OpenBSD: Makefile,v 1.3 2015/03/16 08:59:06 benoit Exp $

COMMENT =		Python implementation of ECDSA cryptography

MODPY_EGG_VERSION = 	0.13
DISTNAME = 		ecdsa-${MODPY_EGG_VERSION}
PKGNAME = 		py-${DISTNAME}
CATEGORIES = 		security

HOMEPAGE = 		https://github.com/warner/python-ecdsa

MAINTAINER = 		Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = 	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=e/ecdsa/}

MODULES =		lang/python

# XXX modify test_pyecdsa.py to enable test in the future !
NO_TEST =		Yes

.include <bsd.port.mk>
