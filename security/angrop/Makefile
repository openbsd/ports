# $OpenBSD: Makefile,v 1.15 2021/11/02 00:02:15 sthen Exp $

# sync with devel/angr/Makefile.inc
ONLY_FOR_ARCHS =	amd64

COMMENT =		ROP chain builder based off of angr

MODPY_EGG_VERSION =	9.0.6642
DISTNAME =		angrop-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://github.com/salls/angrop

# license field not set, consider bugging module's author
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/angr/py-angr>=${MODPY_EGG_VERSION} \
			devel/py-progressbar${MODPY_FLAVOR}

DOCDIR =		${PREFIX}/share/doc/angrop

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
