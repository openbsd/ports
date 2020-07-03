# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:53 sthen Exp $

COMMENT =	downloader for GOG.com games and bonus collections

MODPY_EGG_VERSION =	0.3apl20190727
DISTNAME =		gogrepo-${MODPY_EGG_VERSION}
REVISION =		0

GH_ACCOUNT =		eddie3
GH_PROJECT =		gogrepo
GH_COMMIT =		2cd3ac4a77d3e5104662fcfb4d96e7129a758bfe

CATEGORIES =		games
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
PYCACHE_DIR =	${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gogrepo/${MODPY_PYCACHE:S/"//g}

# optional dep on html2text for prettying up game changelog
RUN_DEPENDS =		devel/py-html5lib${MODPY_FLAVOR}

NO_TEST =		Yes

do-build:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gogrepo
	${INSTALL_DATA} ${WRKSRC}/{README.md,gogrepo.py} \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gogrepo/
	${INSTALL_DATA_DIR} ${PYCACHE_DIR}
	${INSTALL_DATA} \
		${WRKSRC}/${MODPY_PYCACHE:S/"//g}/gogrepo.${MODPY_PYC_MAGIC_TAG:S/"//g}pyc \
		${PYCACHE_DIR}/gogrepo.${MODPY_PYC_MAGIC_TAG:S/"//g}pyc
	${SUBST_CMD} -c -m 755 ${FILESDIR}/gogrepo \
		${PREFIX}/bin/gogrepo

.include <bsd.port.mk>
