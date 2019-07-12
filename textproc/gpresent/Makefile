# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:58 sthen Exp $

COMMENT =		make presentations with groff and PDF
DISTNAME =		gpresent-2.5
CATEGORIES =		textproc
HOMEPAGE =		https://staff.fnwi.uva.nl/b.diertens/useful/gpresent/
MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

RUN_DEPENDS =		textproc/groff
NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}
TMACDIR =		${PREFIX}/share/groff/site-tmac
EXDIR =			${PREFIX}/share/examples/gpresent

do-install:
	${INSTALL_DATA_DIR} ${TMACDIR}
	${INSTALL_DATA} ${WRKSRC}/present.tmac ${TMACDIR}/
	${INSTALL_DATA} ${WRKSRC}/piclink.tmac ${TMACDIR}/
	${INSTALL_SCRIPT} ${WRKSRC}/presentps ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/groff_present.7 ${PREFIX}/man/man7
	${INSTALL_MAN} ${WRKSRC}/groff_piclink.7 ${PREFIX}/man/man7
	${INSTALL_MAN} ${WRKSRC}/presentps.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKSRC}/demo.rof ${EXDIR}/
	${INSTALL_DATA} ${WRKSRC}/demo.pdf ${EXDIR}/
	${INSTALL_DATA} ${WRKSRC}/piclink.rof ${EXDIR}/
	${INSTALL_DATA} ${WRKSRC}/piclink.pdf ${EXDIR}/
	${INSTALL_DATA} ${WRKSRC}/sidebar.rof ${EXDIR}/
	${INSTALL_DATA} ${WRKSRC}/sidebar.pdf ${EXDIR}/

.include <bsd.port.mk>
