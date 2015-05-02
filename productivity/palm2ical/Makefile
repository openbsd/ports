# $OpenBSD: Makefile,v 1.3 2015/05/02 18:22:24 ajacoutot Exp $

COMMENT =	Palm Databook/Calendar export to iCalendar

DISTNAME =	palm2ical-1.9
CATEGORIES =	productivity textproc

HOMEPAGE =	http://hepunx.rl.ac.uk/~adye/software/palm/palm2ical/
MASTER_SITES =	${HOMEPAGE}

EXTRACT_SUFX =	.zip

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =	${WRKDIR}
NO_BUILD =	Yes
PKG_ARCH =	*

RUN_DEPENDS =	databases/p5-Palm \
		devel/p5-Data-ICal \
		devel/p5-DateTime-Format-ICal \
		devel/p5-Data-ICal-TimeZone

NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/fixpdb ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/palm2ical ${PREFIX}/bin/

.include <bsd.port.mk>
