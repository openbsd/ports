# $OpenBSD: Makefile,v 1.5 2010/01/04 22:46:03 ajacoutot Exp $

COMMENT=		online multiplayer version of the Scotland Yard game

MODPY_EGG_VERSION=	0.2.1
DISTNAME=		londonlaw-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME}p3
CATEGORIES=		games

HOMEPAGE=		http://pessimization.com/software/londonlaw/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python

RUN_DEPENDS=		::devel/py-twisted/core \
			::x11/py-wxPython

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
