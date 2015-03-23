# $OpenBSD: Makefile,v 1.29 2015/03/23 09:16:55 sthen Exp $

COMMENT=	Nagios Remote Plugin Executor

DISTNAME=	nrpe-2.15
REVISION=	6
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://www.nagios.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

FLAVOR?=
FLAVORS=	no_ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nagios/}

RUN_DEPENDS=	net/monitoring-plugins

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --libexecdir=${LOCALBASE}/libexec/nagios \
		--with-nrpe-user=_nrpe \
		--with-nrpe-group=_nrpe

.if ${FLAVOR:Mno_ssl}
CONFIGURE_ARGS+= --disable-ssl
.else
WANTLIB+=	lib/eopenssl/crypto lib/eopenssl/ssl
LIB_DEPENDS=	security/openssl
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -nostdinc -I${LOCALBASE}/include/eopenssl -I/usr/include" \
		LDFLAGS="-L${LOCALBASE}/lib/eopenssl -Wl,-rpath,${LOCALBASE}/lib/eopenssl"
.endif

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
