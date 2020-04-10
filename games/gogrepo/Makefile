# $OpenBSD: Makefile,v 1.1.1.1 2020/04/10 11:15:03 thfr Exp $

COMMENT =	downloader for GOG.com games and bonus collections

MODPY_EGG_VERSION =	0.3apl20190727
DISTNAME =		gogrepo-${MODPY_EGG_VERSION}

GH_ACCOUNT =		eddie3
GH_PROJECT =		gogrepo
GH_COMMIT =		2cd3ac4a77d3e5104662fcfb4d96e7129a758bfe

CATEGORIES =		games
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

# optional dep on html2text for prettying up game changelog
RUN_DEPENDS =		devel/py-html5lib${MODPY_FLAVOR}

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gogrepo
	${INSTALL_DATA} ${WRKSRC}/* \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gogrepo/
	${SUBST_CMD} -c -m 755 ${FILESDIR}/gogrepo \
		${PREFIX}/bin/gogrepo
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gogrepo

.include <bsd.port.mk>
