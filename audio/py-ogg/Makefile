# $OpenBSD: Makefile,v 1.21 2013/03/10 22:55:05 espie Exp $

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

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

WANTLIB += ogg ${MODPY_WANTLIB}
LIB_DEPENDS=	audio/libogg

MODPY_ADJ_FILES =	test/oggtail.py

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ./config_unix.py --prefix ${PREFIX} 

do-test: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./testogg.py

.include <bsd.port.mk>
