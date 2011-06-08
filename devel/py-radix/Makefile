# $OpenBSD: Makefile,v 1.8 2011/06/08 17:39:25 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Radix tree implementation for Python

DISTNAME=	py-radix-0.4
REVISION =	5
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

WANTLIB +=		${MODPY_WANTLIB}

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
	    PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
