# $OpenBSD: Makefile,v 1.17 2010/08/30 21:21:53 sthen Exp $

COMMENT =	Python module to handle IPv4 and IPv6 address

MODPY_EGG_VERSION =	0.70
DISTNAME =		IPy-${MODPY_EGG_VERSION}
PKGNAME =		py-IP-${MODPY_EGG_VERSION}
REVISION =		0
CATEGORIES =		net

HOMEPAGE =		http://software.inl.fr/trac/wiki/IPy

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=I/IPy/}

MODULES =		lang/python

MODPY_DISTUTILS_INSTALLARGS =	-O2

do-regress:
	@cd ${WRKSRC}/test; ${MODPY_BIN} ./test_IPy.py

.include <bsd.port.mk>
