COMMENT =	downloader for GOG.com games and bonus collections

MODPY_EGG_VERSION =	0.3apl20230204
DISTNAME =		gogrepo-${MODPY_EGG_VERSION}
REVISION =		1

GH_ACCOUNT =		eddie3
GH_PROJECT =		gogrepo
GH_COMMIT =		2cc5da4b00d69c8ab4d2482a5544398a63c35198

CATEGORIES =		games
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

# optional dep on html2text for prettying up game changelog
RUN_DEPENDS =		devel/py-html5lib${MODPY_FLAVOR}

NO_TEST =		Yes

do-build:

do-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gogrepo
	${INSTALL_DATA} ${WRKSRC}/{README.md,gogrepo.py} \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gogrepo/
	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}
	${SUBST_CMD} -c -m 755 ${FILESDIR}/gogrepo \
		${PREFIX}/bin/gogrepo

.include <bsd.port.mk>
