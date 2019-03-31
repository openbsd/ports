# $OpenBSD: Makefile,v 1.1.1.1 2019/03/31 00:45:19 jasper Exp $

COMMENT =	Windows Exploit Suggester - Next Generation

MODPY_EGG_VERSION = 0.93
GH_COMMIT =	337c52d8b94f176e09567213353ac5c521430a54
GH_PROJECT =	wesng
GH_ACCOUNT =	bitsadmin
DISTNAME =	wesng-${MODPY_EGG_VERSION}

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
