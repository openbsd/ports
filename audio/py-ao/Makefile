# $OpenBSD: Makefile,v 1.16 2011/09/16 08:26:10 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Python wrapper module for the ao library

MODPY_EGG_VERSION=0.82
DISTNAME=	pyao-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION =	8
CATEGORIES=	audio
HOMEPAGE=	http://ekyo.nerim.net/software/pyogg/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ao

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

LIB_DEPENDS=	audio/libao

NO_REGRESS=	Yes

MODPY_ADJ_FILES=	test.py

EXAMPLESDIR=	${PREFIX}/share/examples/py-ao

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ./config_unix.py --prefix ${PREFIX} 

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test.py ${EXAMPLESDIR}

.include <bsd.port.mk>
