# $OpenBSD: Makefile,v 1.3 2005/01/23 16:59:06 alek Exp $

#SHARED_ONLY=	Yes

COMMENT=	"C implementation of the ElementTree API"

DISTNAME=	cElementTree-0.9.8-20050123
PKGNAME=	py-cElementTree-0.9.8
CATEGORIES=	textproc devel

HOMEPAGE=	http://effbot.org/zone/celementtree.htm

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://effbot.org/downloads/
EXTRACT_SUFX=	.zip 

MODULES=	lang/python

RUN_DEPENDS=	::textproc/py-ElementTree

REGRESS_DEPENDS=${RUN_DEPENDS}

do-regress: fake
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./selftest.py

.include <bsd.port.mk>
