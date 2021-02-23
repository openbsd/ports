# $OpenBSD: Makefile,v 1.12 2021/02/23 19:39:08 sthen Exp $

COMMENT =		Python implementation of the LZO library

MODPY_EGG_VERSION =	1.08
DISTNAME =		python-lzo-${MODPY_EGG_VERSION}
PKGNAME =		py-lzo-${MODPY_EGG_VERSION}
REVISION =		5
CATEGORIES =		archivers

HOMEPAGE =		https://www.oberhumer.com/opensource/lzo/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += lzo pthread

MASTER_SITES =	https://www.oberhumer.com/opensource/lzo/download/LZO-v1/

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

LIB_DEPENDS =	archivers/lzo

MAKE_ENV +=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

EXAMPLEDIR =	${PREFIX}/share/examples/py-lzo

pre-configure:
		${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/setup.py

pre-install:
		${INSTALL_DATA_DIR} ${EXAMPLEDIR}
		${INSTALL_DATA} ${WRKSRC}/tests/*.py ${EXAMPLEDIR}

do-test:
		@cd ${WRKSRC} && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
