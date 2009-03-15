# $OpenBSD: Makefile,v 1.5 2009/03/15 13:03:41 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Radix tree implementation for Python

DISTNAME=	py-radix-0.4
PKGNAME=	${DISTNAME}p2
CATEGORIES=	devel net
MAINTAINER=	Damien Miller <djm@openbsd.org>

MASTER_SITES=	http://www2.mindrot.org/files/py-radix/
HOMEPAGE=	http://www.mindrot.org/py-radix.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
	    PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
