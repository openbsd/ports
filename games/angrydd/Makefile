# $OpenBSD: Makefile,v 1.16 2019/07/12 20:46:14 sthen Exp $

COMMENT=	falling blocks puzzle game

DISTNAME=	angrydd-1.0.1
REVISION =	7
CATEGORIES=	games

HOMEPAGE=	http://www.sacredchao.net/~piman/angrydd/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	devel/pygame>=1.7 \
		math/py-Numeric

MODULES=	lang/python
NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKSRC}/angrydd.py
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} install

.include <bsd.port.mk>
