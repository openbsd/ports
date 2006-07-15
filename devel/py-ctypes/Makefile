# $OpenBSD: Makefile,v 1.1.1.1 2006/07/15 22:47:25 djm Exp $
COMMENT=	"Python foreign function interface library"

DISTNAME=	ctypes-0.9.9.6
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	devel

MAINTAINER=	Damien Miller <djm@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ctypes/}
HOMEPAGE=	http://starship.python.net/crew/theller/ctypes/

# BSD-like 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python
SHARED_ONLY=	Yes

do-regress: fake
	cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} ./ctypes/test/runtests.py

.include <bsd.port.mk>
