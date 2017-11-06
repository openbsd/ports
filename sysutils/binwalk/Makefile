# $OpenBSD: Makefile,v 1.9 2017/11/06 09:26:35 jasper Exp $

COMMENT =	tool for reverse-engineering and analysing firmware blobs

MODPY_EGG_VERSION = 2.1.1
GH_ACCOUNT =	devttys0
GH_PROJECT =	binwalk
GH_TAGNAME =	v${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/devttys0/binwalk

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =	devel/capstone/python${MODPY_FLAVOR}

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/binwalk
	${INSTALL_DATA} ${WRKDIST}/src/scripts/examples/* \
		${PREFIX}/share/examples/binwalk/

.include <bsd.port.mk>
