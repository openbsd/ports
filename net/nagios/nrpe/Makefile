# $OpenBSD: Makefile,v 1.28 2014/07/22 08:55:45 jca Exp $

COMMENT=	Nagios Remote Plugin Executor

DISTNAME=	nrpe-2.15
REVISION=	5
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://www.nagios.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nagios/}

RUN_DEPENDS=	net/monitoring-plugins

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --libexecdir=${LOCALBASE}/libexec/nagios \
		--with-nrpe-user=_nrpe \
		--with-nrpe-group=_nrpe

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/nrpe.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nrpe
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nrpe
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nrpe
	${INSTALL_DATA} ${WRKSRC}/SECURITY ${PREFIX}/share/doc/nrpe
	${INSTALL_DATA} ${WRKSRC}/sample-config/nrpe.cfg ${PREFIX}/share/examples/nrpe
	${INSTALL_PROGRAM} ${WRKSRC}/src/check_nrpe ${PREFIX}/libexec/nagios
	${INSTALL_PROGRAM} ${WRKSRC}/src/nrpe ${PREFIX}/sbin

NO_TEST=	Yes

.include <bsd.port.mk>
