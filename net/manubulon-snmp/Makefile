# $OpenBSD: Makefile,v 1.4 2020/07/11 22:54:37 sthen Exp $

PKG_ARCH =		*

COMMENT =		extended SNMP-based checks for Icinga/Nagios

GH_ACCOUNT =		dnsmichi
GH_PROJECT =		manubulon-snmp
GH_TAGNAME =		v2.1.0
EPOCH =			0
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		net/p5-Net-SNMP

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios \
	    ${PREFIX}/share/doc/manubulon-snmp
	${INSTALL_SCRIPT} ${WRKSRC}/plugins/*.pl ${PREFIX}/libexec/nagios/
	cd ${WRKSRC}; ${INSTALL_DATA} [A-Z]* doc/*md \
	    ${PREFIX}/share/doc/manubulon-snmp/

.include <bsd.port.mk>
