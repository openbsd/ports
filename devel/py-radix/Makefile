# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:26 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Radix tree implementation for Python

DISTNAME=	py-radix-0.4
REVISION =	7
CATEGORIES=	devel net

MASTER_SITES=	http://www2.mindrot.org/files/py-radix/
HOMEPAGE=	http://www.mindrot.org/py-radix.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

WANTLIB +=		${MODPY_WANTLIB}

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
	    PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
