# $OpenBSD: Makefile,v 1.9 2010/11/26 07:20:11 espie Exp $

COMMENT=	falling blocks puzzle game

DISTNAME=	angrydd-1.0.1
REVISION =	3
CATEGORIES=	games

HOMEPAGE=	http://www.sacredchao.net/~piman/angrydd/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	devel/pygame>=1.7 \
		math/py-Numeric

MODULES=	lang/python
NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_GROFF =	Yes

do-install:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKSRC}/angrydd.py
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} install

.include <bsd.port.mk>
