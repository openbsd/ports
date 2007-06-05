# $OpenBSD: Makefile,v 1.1.1.1 2007/06/05 14:55:31 jasper Exp $

COMMENT=		online multiplayer version of the Scotland Yard game

DISTNAME=		londonlaw-0.2.1
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

.include <bsd.port.mk>
