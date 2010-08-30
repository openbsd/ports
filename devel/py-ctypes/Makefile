# $OpenBSD: Makefile,v 1.8 2010/08/30 22:24:15 jasper Exp $
COMMENT=	Python foreign function interface library

DISTNAME=	ctypes-1.0.1
PKGNAME=	py-${DISTNAME:L}
REVISION =	3
CATEGORIES=	devel

MAINTAINER=	Damien Miller <djm@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ctypes/}
HOMEPAGE=	http://starship.python.net/crew/theller/ctypes/

# libffi has not been ported to arm yet
NOT_FOR_ARCHS=	arm

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
