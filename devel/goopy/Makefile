# $OpenBSD: Makefile,v 1.15 2021/02/28 04:02:06 daniel Exp $

COMMENT=	Google utilities written in Python

DISTNAME=	goopy-0.1
REVISION=	6
CATEGORIES=	devel
HOMEPAGE=	http://goog-goopy.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=goog-goopy/}

MODULES=	lang/python

do-test:
	@cd ${WRKSRC}/goopy && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./functional_unittest.py

.include <bsd.port.mk>
