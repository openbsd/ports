# $OpenBSD: Makefile,v 1.1.1.1 2005/01/22 02:33:43 alek Exp $

COMMENT=	"pure-Python implementation of the ElementTree API"

DISTNAME=	elementtree-1.2.4-20041228
PKGNAME=	py-ElementTree-1.2.4
CATEGORIES=	textproc devel

HOMEPAGE=	http://effbot.org/zone/element-index.htm

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://effbot.org/downloads/
EXTRACT_SUFX=	.zip 

MODULES=	lang/python

RUN_DEPENDS=	${MODPY_EXPAT_DEPENDS}

REGRESS_DEPENDS=${RUN_DEPENDS}

do-regress: fake
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./selftest.py

.include <bsd.port.mk>
