# $OpenBSD: Makefile,v 1.1.1.1 2016/04/08 21:15:04 giovanni Exp $

COMMENT =		deduplicating backup program

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		borgbackup-${MODPY_EGG_VERSION}

MODPY_PI =		Yes

CATEGORIES =		sysutils

MAINTAINER =		Michael Reed <m.reed@mykolab.com>

# BSD-3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
WANTLIB +=		${MODPY_WANTLIB} crypto pthread lz4

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} archivers/lz4
BUILD_DEPENDS +=	devel/py-setuptools_scm,python3 \
			textproc/py-sphinx
RUN_DEPENDS +=		net/py-msgpack,python3

TEST_DEPENDS +=		net/py-msgpack,python3

MODPY_SETUPTOOLS =	Yes

post-build:
	make -C ${WRKSRC}/docs man READTHEDOCS=True

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/_build/man/borg.1 ${PREFIX}/man/man1/borg.1

.include <bsd.port.mk>
