# $OpenBSD: Makefile,v 1.15 2020/07/03 21:13:09 sthen Exp $

COMMENT =	tool for reverse-engineering and analysing firmware blobs

MODPY_EGG_VERSION = 2.2.0
REVISION =	1
GH_ACCOUNT =	ReFirmLabs
GH_PROJECT =	binwalk
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	testing/tests

# There are a bunch of utilities which aren't ported yet but which would
# benefit the binwalk user:
# sasquatch for non-standard SquashFS images
# ubi_reader (+ py-lzo) for UBIFS
# yaffshiv for YAFFS
RUN_DEPENDS =	devel/capstone/python${MODPY_FLAVOR} \
		security/py-cryptodome${MODPY_FLAVOR} \
		sysutils/jefferson

TEST_ENV =	PYTHONPATH=${WRKSRC}/lib
PORTHOME =	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/binwalk
	${INSTALL_DATA} ${WRKDIST}/src/scripts/examples/* \
		${PREFIX}/share/examples/binwalk/

.include <bsd.port.mk>
