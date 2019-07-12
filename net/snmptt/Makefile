# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:49 sthen Exp $

COMMENT=	SNMP trap handler (translates traps to friendlier format)

DISTNAME=	snmptt_1.4
PKGNAME=	${DISTNAME:S/_/-/}

CATEGORIES=	net

HOMEPAGE=	http://snmptt.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=snmptt/}
EXTRACT_SUFX=		.tgz

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

RUN_DEPENDS=		devel/p5-Config-IniFiles \
			net/net-snmp

DOC_DIR=		${PREFIX}/share/doc/snmptt
EX_DIR=			${PREFIX}/share/examples/snmptt

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/{snmptt,snmptthandler} ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EX_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EX_DIR}
	${INSTALL_DATA} ${WRKSRC}/snmptt.ini ${EX_DIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/snmptt
	${INSTALL_DATA} ${WRKSRC}/sample-* ${PREFIX}/share/snmptt

.include <bsd.port.mk>
