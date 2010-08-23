# $OpenBSD: Makefile,v 1.2 2010/08/23 12:06:08 ajacoutot Exp $

COMMENT=		electronic periodic table of the elements

DISTNAME=		epte-2.0.7
CATEGORIES=		education

REVISION=		0

HOMEPAGE=		http://www.toddmiller.com/epte/

WANTLIB +=		c ncurses

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/epte
MAKE_FILE=		makefile
ALL_TARGET=		epte

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/epte.1

.include <bsd.port.mk>
