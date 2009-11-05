# $OpenBSD: Makefile,v 1.2 2009/11/05 11:19:41 sthen Exp $

COMMENT=		Nagios plugin to check SIP

DISTNAME=		check_sip
PKGNAME=		${DISTNAME}-20060929
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

do-extract:
	@mkdir ${WRKSRC}
	@cp ${DISTDIR}/${DISTNAME} ${WRKSRC}

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_sip

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_sip ${PREFIX}/libexec/nagios

.include <bsd.port.mk>
