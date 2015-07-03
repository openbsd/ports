# $OpenBSD: Makefile,v 1.1.1.1 2015/07/03 21:41:26 sthen Exp $

PKG_ARCH =		*

COMMENT =		extended SNMP-based checks for Icinga/Nagios

DISTNAME =		manubulon-snmp-20150525
GH_ACCOUNT =		dnsmichi
GH_PROJECT =		manubulon-snmp
GH_COMMIT =		83795bee374466b865a99af479d7cfa0e1ed1e08

CATEGORIES =		net

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		net/p5-Net-SNMP

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/plugins/*.pl ${PREFIX}/libexec/nagios/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/manubulon-snmp
	${INSTALL_DATA} ${WRKSRC}/plugins/doc/* ${PREFIX}/share/doc/manubulon-snmp/

.include <bsd.port.mk>
