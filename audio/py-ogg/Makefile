# $OpenBSD: Makefile,v 1.17 2011/05/30 15:10:17 dcoppa Exp $

SHARED_ONLY=	Yes

COMMENT=	Python wrapper for the Ogg libraries

MODPY_EGG_VERSION=1.3
DISTNAME=	pyogg-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION =	6
CATEGORIES=	audio
HOMEPAGE=	http://ekyo.nerim.net/software/pyogg/

# LGPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

WANTLIB += ogg
LIB_DEPENDS=	audio/libogg

MODPY_ADJ_FILES =	test/oggtail.py

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ./config_unix.py --prefix ${PREFIX} 

do-regress: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./testogg.py

.include <bsd.port.mk>
