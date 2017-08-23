# $OpenBSD: Makefile,v 1.7 2017/08/23 11:29:37 jasper Exp $

COMMENT =	tool for reverse-engineering and analysing firmware blobs

MODPY_EGG_VERSION = 2.1.1
GH_ACCOUNT =	devttys0
GH_PROJECT =	binwalk
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/devttys0/binwalk

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/py-libmagic${MODPY_FLAVOR}

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/binwalk
	${INSTALL_DATA} ${WRKDIST}/src/scripts/examples/* \
		${PREFIX}/share/examples/binwalk/

.include <bsd.port.mk>
