# $OpenBSD: Makefile,v 1.8 2017/02/08 19:07:36 danj Exp $

PKG_ARCH =		*

COMMENT =		Nagios plugin to check RAID status with bioctl

DISTNAME =		check_bioctl-1.23
CATEGORIES =		net

MAINTAINER =		Andrew Fresh <afresh1@openbsd.org>

HOMEPAGE =		http://cvs.afresh1.com/nagios/check_bioctl.html
MASTER_SITES =		http://cvs.afresh1.com/nagios/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		net/monitoring-plugins

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_bioctl ${WRKSRC}/README

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_bioctl ${PREFIX}/libexec/nagios
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_bioctl
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/check_bioctl

.include <bsd.port.mk>
