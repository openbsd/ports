# $OpenBSD: Makefile,v 1.20 2013/04/17 15:15:16 sthen Exp $

COMMENT=	Nagios Remote Plugin Executor

DISTNAME=	nrpe-2.14
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>
HOMEPAGE=	http://www.nagios.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto ssl wrap

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nagios/}

RUN_DEPENDS=	net/nagios/plugins

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-command-args \
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
