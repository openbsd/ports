COMMENT=		electronic periodic table of the elements

DISTNAME=		epte-2.0.8
CATEGORIES=		education
REVISION=		1

HOMEPAGE=		http://www.toddmiller.com/epte/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c curses

WRKDIST=		${WRKDIR}/epte
MAKE_FILE=		makefile
ALL_TARGET=		epte

SITES=			http://www.toddmiller.com/epte/

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/epte.1

.include <bsd.port.mk>
