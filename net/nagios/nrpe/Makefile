COMMENT=	Nagios Remote Plugin Executor

DISTNAME=	nrpe-4.0.3
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	https://github.com/NagiosEnterprises/nrpe

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto ssl

MASTER_SITES=	https://github.com/NagiosEnterprises/nrpe/releases/download/${DISTNAME}/

RUN_DEPENDS=	net/monitoring-plugins

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --libexecdir=${LOCALBASE}/libexec/nagios \
		--with-need-dh=no \
		--with-nrpe-user=_nrpe \
		--with-nrpe-group=_nrpe \
		--with-piddir=/var/run/nrpe

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nrpe
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nrpe
	${INSTALL_DATA} ${WRKSRC}/README*.md ${PREFIX}/share/doc/nrpe
	${INSTALL_DATA} ${WRKSRC}/SECURITY.md ${PREFIX}/share/doc/nrpe
	${INSTALL_DATA} ${WRKSRC}/docs/NRPE.* ${PREFIX}/share/doc/nrpe
	${INSTALL_DATA} ${WRKSRC}/sample-config/nrpe.cfg ${PREFIX}/share/examples/nrpe
	${INSTALL_PROGRAM} ${WRKSRC}/src/check_nrpe ${PREFIX}/libexec/nagios
	${INSTALL_PROGRAM} ${WRKSRC}/update-cfg.pl ${PREFIX}/libexec/nagios
	${INSTALL_PROGRAM} ${WRKSRC}/src/nrpe ${PREFIX}/sbin

NO_TEST=	Yes

.include <bsd.port.mk>
