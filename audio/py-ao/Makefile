# $OpenBSD: Makefile,v 1.18 2013/03/10 22:55:05 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Python wrapper module for the ao library

MODPY_EGG_VERSION=0.82
DISTNAME=	pyao-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION =	9
CATEGORIES=	audio
HOMEPAGE=	http://ekyo.nerim.net/software/pyogg/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ao ${MODPY_WANTLIB}

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

LIB_DEPENDS=	audio/libao

NO_TEST=	Yes

MODPY_ADJ_FILES=	test.py

EXAMPLESDIR=	${PREFIX}/share/examples/py-ao

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ./config_unix.py --prefix ${PREFIX} 

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test.py ${EXAMPLESDIR}

.include <bsd.port.mk>
