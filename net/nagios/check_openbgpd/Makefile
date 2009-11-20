# $OpenBSD: Makefile,v 1.1.1.1 2009/11/20 17:47:45 sthen Exp $

PKG_ARCH=		*

COMMENT=		Nagios plugin to monitor OpenBGPd peers
DISTNAME=		check_openbgpd-1.5
CATEGORIES=		sysutils net

MAINTAINER=		Andrew Fresh <andrew@afresh1.com>

HOMEPAGE=		http://openbsd.somedomain.net/nagios/
MASTER_SITES=		http://monitoringexchange.org/attachment/download/Check-Plugins/Software/Misc/check_openbgpd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

RUN_DEPENDS+=		:nagios-plugins-*:net/nagios/plugins

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_openbgpd ${WRKSRC}/README

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_SCRIPT} ${WRKSRC}/check_openbgpd ${PREFIX}/libexec/nagios
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_openbgpd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/check_openbgpd

.include <bsd.port.mk>
