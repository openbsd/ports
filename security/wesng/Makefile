# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:53 sthen Exp $

COMMENT =	Windows Exploit Suggester - Next Generation

MODPY_EGG_VERSION = 0.95
GH_COMMIT =	444cb9c1549503db9c0740951c417c832696a8a8
GH_PROJECT =	wesng
GH_ACCOUNT =	bitsadmin
DISTNAME =	wesng-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	security

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-chardet${MODPY_FLAVOR}

# https://github.com/bitsadmin/wesng/pull/12
post-extract:
	cp ${FILESDIR}/setup.py ${WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wes.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/wesng/
	${INSTALL_DATA} ${WRKSRC}/*.zip ${PREFIX}/share/wesng/

.include <bsd.port.mk>
