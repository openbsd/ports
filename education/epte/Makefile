# $OpenBSD: Makefile,v 1.6 2014/11/01 10:18:08 ajacoutot Exp $

COMMENT=		electronic periodic table of the elements

DISTNAME=		epte-2.0.8
CATEGORIES=		education

HOMEPAGE=		http://www.toddmiller.com/epte/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ncurses

WRKDIST=		${WRKDIR}/epte
MAKE_FILE=		makefile
ALL_TARGET=		epte

MASTER_SITES=		http://www.toddmiller.com/epte/

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/epte.1

.include <bsd.port.mk>
