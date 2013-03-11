# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:25 espie Exp $

COMMENT=		calculate Levenshtein distance between two strings

MODPY_EGG_VERSION=	0.3
DISTNAME=		py-editdist-${MODPY_EGG_VERSION}
REVISION =		5
CATEGORIES=    		devel

HOMEPAGE=		http://www.mindrot.org/projects/py-editdist/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.mindrot.org/files/py-editdist/

MODULES=		lang/python

WANTLIB += 		${MODPY_WANTLIB}

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test.py

.include <bsd.port.mk>
