# $OpenBSD: Makefile,v 1.9 2009/03/10 22:21:48 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Python wrapper module for the ao library

DISTNAME=	pyao-0.82
PKGNAME=	${DISTNAME:S/py/py-/}p3
CATEGORIES=	audio
HOMEPAGE=	http://ekyo.nerim.net/software/pyogg/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

LIB_DEPENDS=	ao.>=3::audio/libao

NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-ao

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ./config_unix.py --prefix ${PREFIX} 

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test.py ${EXAMPLESDIR}

.include <bsd.port.mk>
