# $OpenBSD: Makefile,v 1.8 2016/01/07 21:37:48 jasper Exp $

COMMENT =		command line interface tools for Python

MODPY_EGG_VERSION =	0.3.7
DISTNAME =		clint-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		frantisek holop <minusf@obiit.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

DOCS =			${PREFIX}/share/doc/clint

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${WRKSRC} && pax -rw *.rst ${DOCS}

.include <bsd.port.mk>
