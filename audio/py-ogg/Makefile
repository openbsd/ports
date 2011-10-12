# $OpenBSD: Makefile,v 1.20 2011/10/12 12:54:30 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Python wrapper for the Ogg libraries

MODPY_EGG_VERSION=1.3
DISTNAME=	pyogg-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION =	9
CATEGORIES=	audio
HOMEPAGE=	http://ekyo.nerim.net/software/pyogg/

# LGPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

WANTLIB += ogg ${MODPY_WANTLIB}
LIB_DEPENDS=	audio/libogg

MODPY_ADJ_FILES =	test/oggtail.py

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ./config_unix.py --prefix ${PREFIX} 

do-regress: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./testogg.py

.include <bsd.port.mk>
