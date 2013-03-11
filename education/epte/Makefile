# $OpenBSD: Makefile,v 1.5 2013/03/11 11:06:03 espie Exp $

COMMENT=		electronic periodic table of the elements

DISTNAME=		epte-2.0.7
CATEGORIES=		education

REVISION=		0

HOMEPAGE=		http://www.toddmiller.com/epte/

WANTLIB +=		c ncurses

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WRKDIST=		${WRKDIR}/epte
MAKE_FILE=		makefile
ALL_TARGET=		epte
USE_GROFF =		Yes

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/epte.1

.include <bsd.port.mk>
