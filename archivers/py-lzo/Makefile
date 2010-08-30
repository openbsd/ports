# $OpenBSD: Makefile,v 1.2 2010/08/30 16:48:31 fgsch Exp $

COMMENT =		Python implementation of the LZO library

MODPY_EGG_VERSION =	1.08
DISTNAME =		python-lzo-${MODPY_EGG_VERSION}
PKGNAME =		py-lzo-${MODPY_EGG_VERSION}
REVISION =		0
CATEGORIES =		archivers

HOMEPAGE =		http://www.oberhumer.com/opensource/lzo/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://www.oberhumer.com/opensource/lzo/download/LZO-v1/

MODULES =	lang/python

LIB_DEPENDS =	lzo::archivers/lzo

MAKE_ENV +=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

EXAMPLEDIR =	${PREFIX}/share/examples/py-lzo

pre-configure:
		${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/setup.py

pre-install:
		${INSTALL_DATA_DIR} ${EXAMPLEDIR}
		${INSTALL_DATA} ${WRKSRC}/tests/*.py ${EXAMPLEDIR}

do-regress:
		@cd ${WRKSRC} && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
