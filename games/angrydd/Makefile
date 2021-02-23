# $OpenBSD: Makefile,v 1.18 2021/02/23 19:39:22 sthen Exp $

COMMENT=	falling blocks puzzle game

DISTNAME=	angrydd-1.0.1
REVISION =	8
CATEGORIES=	games

HOMEPAGE=	http://www.sacredchao.net/~piman/angrydd/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	devel/pygame>=1.7 \
		math/py-numpy

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKSRC}/angrydd.py
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} install

.include <bsd.port.mk>
