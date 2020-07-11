# $OpenBSD: Makefile,v 1.13 2020/07/11 22:54:37 sthen Exp $

COMMENT=	Nagios plugin to check SIP

DISTNAME=	check_sip-20060929
REVISION=	4
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	http://isle.wumpus.org/src/nagios/
MASTER_SITES=	https://spacehopper.org/mirrors/

# Artistic License 2.0
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

EXTRACT_SUFX=
RUN_DEPENDS=	net/sipsak \
		net/monitoring-plugins
WRKDIST=	${WRKDIR}

do-extract:
	@cp ${DISTDIR}/${DISTNAME} ${WRKSRC}/check_sip

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_sip

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_sip ${PREFIX}/libexec/nagios

.include <bsd.port.mk>
