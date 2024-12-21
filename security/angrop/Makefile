# sync with devel/angr/Makefile.inc
ONLY_FOR_ARCHS =	amd64

COMMENT =		ROP chain builder based off of angr

MODPY_DISTV =	9.2.8
DISTNAME =		angrop-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		security

HOMEPAGE =		https://github.com/angr/angrop

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =		devel/angr/py-angr>=${MODPY_DISTV} \
			devel/py-progressbar \
			devel/py-tqdm

DOCDIR =		${PREFIX}/share/doc/angrop

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
