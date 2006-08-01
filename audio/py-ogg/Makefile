# $OpenBSD: Makefile,v 1.7 2006/08/01 12:13:28 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python wrapper for the Ogg libraries"

DISTNAME=	pyogg-1.3
PKGNAME=	${DISTNAME:S/py/py-/}p0
CATEGORIES=	audio
HOMEPAGE=	http://www.andrewchatham.com/pyogg/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# LGPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

MODULES=	lang/python

LIB_DEPENDS=	ogg.>=5.2::audio/libogg

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ./config_unix.py --prefix ${PREFIX} 

do-regress: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./testogg.py

.include <bsd.port.mk>
