# $OpenBSD: Makefile,v 1.6 2020/06/15 08:49:02 kn Exp $

# sync with devel/angr/Makefile.inc
ONLY_FOR_ARCHS =	amd64

COMMENT =		ROP chain builder based off of angr

DISTNAME =		angrop-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://github.com/salls/angrop

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Klemens Nanni <kn@openbsd.org>

# license field not set, consider bugging module's author
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_EGG_VERSION =	8.20.6.8
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/angr/py-angr>=${MODPY_EGG_VERSION} \
			devel/py-progressbar${MODPY_FLAVOR}

DOCDIR =		${PREFIX}/share/doc/angrop

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include <bsd.port.mk>
