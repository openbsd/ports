# $OpenBSD: Makefile,v 1.1.1.1 2009/05/31 21:03:10 benoit Exp $

COMMENT =		Python implementation of the LZO library

MODPY_EGG_VERSION =	1.08
DISTNAME =		python-lzo-${MODPY_EGG_VERSION}
PKGNAME =		py-lzo-${MODPY_EGG_VERSION}
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
