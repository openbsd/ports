# $OpenBSD: Makefile,v 1.15 2009/04/05 23:48:55 sthen Exp $

COMMENT=		jabber server written in Erlang

V=			2.0.5
DISTNAME=		ejabberd-$V

CATEGORIES=		net

HOMEPAGE=		http://www.ejabberd.im/

MAINTAINER=		Wiktor Izdebski <vicviq@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		expat crypto ssl z

MASTER_SITES=		http://www.process-one.net/downloads/ejabberd/$V/

MODULES=		converters/libiconv
BUILD_DEPENDS=		:erlang->=12b.0:lang/erlang
RUN_DEPENDS=		:erlang->=12b.0:lang/erlang

MAKE_FLAGS+=		EJABBERDDIR=${PREFIX}/lib/ejabberd \
			LOGDIR=${EJLOGDIR} \
			ETCDIR=${SYSCONFDIR}/ejabberd \
			SPOOLDIR=${EJDBDIR}
FAKE_FLAGS+=		EJABBERDDIR=${WRKINST}/${PREFIX}/lib/ejabberd \
			LOGDIR=${WRKINST}${EJLOGDIR} \
			ETCDIR=${WRKINST}/${PREFIX}/share/examples/ejabberd \
			SPOOLDIR=${WRKINST}/${EJDBDIR}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
SHARED_ONLY=		Yes
CONFIGURE_ARGS+=	--disable-pam \
			--enable-mod_pubsub \
			--enable-mod_irc \
			--enable-mod_muc \
			--enable-eldap \
			--enable-web \
			--enable-tls \
			--enable-odbc \
			--enable-ejabberd_zlib \
			--disable-roster-gateway-workaround \
			--disable-mssql
CONFIGURE_ENV=		HOME=${WRKDIST}

JABBERDUSER=            _ejabberd
JABBERDGROUP=           _ejabberd
EJDBDIR=		/var/db/ejabberd
EJLOGDIR=		/var/log/ejabberd

WRKSRC=			${WRKDIST}/src

NO_REGRESS=		Yes

SUBST_VARS=		EJDBDIR EJLOGDIR JABBERDUSER

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ejabberd
	cd ${WRKDIST}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ejabberd/{} \; && \
		find . ! -type d -exec ${SUBST_CMD} -c {} ${PREFIX}/share/examples/ejabberd/{} \;
	${INSTALL_DATA} ${WRKSRC}/odbc/pg.sql ${PREFIX}/share/examples/ejabberd/
	${INSTALL_DATA} ${WRKSRC}/odbc/mysql.sql ${PREFIX}/share/examples/ejabberd/
	cd ${WRKDIST}/doc && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ejabberd/{} \; && \
		find . -name '*.html' -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/ejabberd/{} \; && \
		find . -name '*.png' -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/ejabberd/{} \;
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/ejabberd/README.OpenBSD
	${SUBST_CMD} ${PREFIX}/share/examples/ejabberd/ejabberd.cfg
	${SUBST_CMD} ${PREFIX}/sbin/ejabberdctl
	@chown ${SHAREOWN}:${BINGRP} ${PREFIX}/sbin/ejabberdctl
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/ejabberd
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/ejabberd

.include <bsd.port.mk>

