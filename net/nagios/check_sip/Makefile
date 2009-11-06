# $OpenBSD: Makefile,v 1.3 2009/11/06 13:29:11 sthen Exp $

COMMENT=		Nagios plugin to check SIP

DISTNAME=		check_sip-20060929
CATEGORIES=		net

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=		http://isle.wumpus.org/src/nagios/
MASTER_SITES=		http://spacehopper.org/mirrors/

# Artistic License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

EXTRACT_SUFX=
RUN_DEPENDS=		::net/sipsak
WRKDIST=		${WRKDIR}

do-extract:
	@cp ${DISTDIR}/${DISTNAME} ${WRKSRC}/check_sip

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_sip

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_sip ${PREFIX}/libexec/nagios

.include <bsd.port.mk>
