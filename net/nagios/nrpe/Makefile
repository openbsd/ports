# $OpenBSD: Makefile,v 1.19 2013/03/11 11:35:49 espie Exp $

COMMENT=	Nagios Remote Plugin Executor

# packaged from Icinga git repo.
DISTNAME=	icinga-nrpe-2.12.20100914
REVISION=	4
PKGNAME=	${DISTNAME:S/icinga-//}
WRKDIST=	${WRKDIR}/icinga-nrpe
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>
HOMEPAGE=	http://www.nagios.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto ssl wrap

MASTER_SITES=	http://spacehopper.org/mirrors/

RUN_DEPENDS=	net/nagios/plugins

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--enable-command-args \
		--libexecdir=${LOCALBASE}/libexec/nagios \
		--with-nrpe-user=_nrpe \
		--with-nrpe-group=_nrpe \
		--with-kerberos-inc=/usr/include/kerberosV/ \
		ac_cv_lib_wrap_main=yes

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
