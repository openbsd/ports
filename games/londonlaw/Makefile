# $OpenBSD: Makefile,v 1.4 2009/03/15 14:39:02 espie Exp $

COMMENT=		online multiplayer version of the Scotland Yard game

MODPY_EGG_VERSION=	0.2.1
DISTNAME=		londonlaw-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME}p2
CATEGORIES=		games

HOMEPAGE=		http://www.eecs.umich.edu/~pelzlpj/londonlaw/

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
