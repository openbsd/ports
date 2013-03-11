# $OpenBSD: Makefile,v 1.10 2013/03/11 11:07:39 espie Exp $

COMMENT=		online multiplayer version of the Scotland Yard game

MODPY_EGG_VERSION=	0.2.1
DISTNAME=		londonlaw-${MODPY_EGG_VERSION}
REVISION =		6
CATEGORIES=		games

HOMEPAGE=		http://pessimization.com/software/londonlaw/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python

RUN_DEPENDS=		devel/py-twisted/core \
			x11/py-wxPython

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
