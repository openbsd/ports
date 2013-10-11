# $OpenBSD: Makefile,v 1.14 2013/10/11 23:49:32 naddy Exp $

COMMENT=	falling blocks puzzle game

DISTNAME=	angrydd-1.0.1
REVISION =	6
CATEGORIES=	games

HOMEPAGE=	http://www.sacredchao.net/~piman/angrydd/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
