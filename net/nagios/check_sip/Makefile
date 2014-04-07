# $OpenBSD: Makefile,v 1.9 2014/04/07 12:32:23 sthen Exp $

COMMENT=		Nagios plugin to check SIP

DISTNAME=		check_sip-20060929
REVISION=		2
CATEGORIES=		net

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=		http://isle.wumpus.org/src/nagios/
MASTER_SITES=		http://spacehopper.org/mirrors/

# Artistic License 2.0
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes

EXTRACT_SUFX=
RUN_DEPENDS=		net/sipsak \
			net/nagios/plugins,-main
WRKDIST=		${WRKDIR}

do-extract:
	@cp ${DISTDIR}/${DISTNAME} ${WRKSRC}/check_sip

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_sip

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_sip ${PREFIX}/libexec/nagios

.include <bsd.port.mk>
