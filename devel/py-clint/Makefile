# $OpenBSD: Makefile,v 1.5 2014/09/03 11:19:33 sthen Exp $

COMMENT =		command line interface tools for Python

MODPY_EGG_VERSION =	0.3.7
DISTNAME =		clint-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://pypi.python.org/pypi/clint
MAINTAINER =		frantisek holop <minusf@obiit.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=c/clint/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

DOCS =			${PREFIX}/share/doc/clint

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${WRKSRC} && pax -rw *.rst ${DOCS}

.include <bsd.port.mk>
