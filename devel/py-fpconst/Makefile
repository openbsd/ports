# $OpenBSD: Makefile,v 1.1.1.1 2005/11/12 00:53:31 djm Exp $

COMMENT=	"Python functions and constants for IEEE754 floating point"

DISTNAME=	fpconst-0.7.2
PKGNAME=	${DISTNAME:S/^/py-/}
CATEGORIES=    	devel

HOMEPAGE=	http://research.warnes.net/projects/RStatServer/fpconst/

MAINTAINER=	Damien Miller <djm@openbsd.org>

MODULES=	lang/python

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://research.warnes.net/~warnes/fpconst/

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./fpconst.py

.include <bsd.port.mk>

