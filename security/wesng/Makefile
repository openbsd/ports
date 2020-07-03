# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:08 sthen Exp $

COMMENT =	Windows Exploit Suggester - Next Generation

MODPY_EGG_VERSION = 0.98
GH_COMMIT =	07ac559c1f63c0db0324a54713e078d5f26afd57
GH_PROJECT =	wesng
GH_ACCOUNT =	bitsadmin
DISTNAME =	wesng-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	security

# BSD
PERMIT_PACKAGE =	Yes

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
