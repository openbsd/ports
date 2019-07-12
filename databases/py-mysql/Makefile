# $OpenBSD: Makefile,v 1.55 2019/07/12 20:44:00 sthen Exp $

COMMENT =	Python interface to MySQL

MODPY_EGG_VERSION = 1.2.5
DISTNAME =	MySQL-python-${MODPY_EGG_VERSION}
PKGNAME =	py-mysql-${MODPY_EGG_VERSION}
REVISION =	6

CATEGORIES =	databases

HOMEPAGE =	https://github.com/farcepest/MySQLdb1

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =	.zip

WANTLIB +=	crypto iconv mariadb m pthread ssl z ${MODPY_WANTLIB}

MODPY_PI =	Yes

MODULES =	lang/python
BUILD_DEPENDS =	textproc/py-sphinx
LIB_DEPENDS =	databases/mariadb

NO_TEST =	Yes

MODPY_SETUPTOOLS = Yes

post-extract:
	chmod -R go-w ${WRKSRC}

DOCSRC =	${WRKSRC}/doc

post-build:
	${MODPY_CMD} build_ext --inplace
	cd ${DOCSRC} && PYTHONPATH=${WRKSRC} \
		${LOCALBASE}/bin/sphinx-build -N . _build/html

DOCS =		${PREFIX}/share/doc/py-mysql

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}

.include <bsd.port.mk>
