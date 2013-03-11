# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:25 espie Exp $

COMMENT=	Python functions and constants for IEEE754 floating point

DISTNAME=	fpconst-0.7.2
PKGNAME=	${DISTNAME:S/^/py-/}
REVISION =	7
CATEGORIES=    	devel

HOMEPAGE=	http://research.warnes.net/projects/RStatServer/fpconst/

MODULES=	lang/python

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://research.warnes.net/~warnes/fpconst/

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./fpconst.py

.include <bsd.port.mk>

