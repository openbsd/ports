# $OpenBSD: Makefile,v 1.1.1.1 2003/10/14 16:53:02 sturm Exp $

COMMENT=	"Python wrapper for the Ogg libraries"

DISTNAME=	pyogg-1.3
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	audio
HOMEPAGE=	http://www.andrewchatham.com/pyogg/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# LGPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

MODULES=	python

LIB_DEPENDS=	ogg::audio/libogg

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ./config_unix.py --prefix ${PREFIX} 

do-regress: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./testogg.py

.include <bsd.port.mk>
