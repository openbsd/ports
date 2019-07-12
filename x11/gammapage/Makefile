# $OpenBSD: Makefile,v 1.9 2019/07/12 20:51:11 sthen Exp $

COMMENT=	gamma-adjusting utility

DISTNAME=	GAMMApage-0.5
REVISION=	3

CATEGORIES=	x11
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.pcbypaul.com/software/GAMMApage.html

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.pcbypaul.com/software/dl/

MODULES=	lang/python

RUN_DEPENDS=	x11/py-gtk2

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GAMMApage.py ${PREFIX}/bin/GAMMApage

.include <bsd.port.mk>
