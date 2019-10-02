# $OpenBSD: Makefile,v 1.49 2019/10/02 14:46:31 sthen Exp $

COMMENT=		jabber server written in Erlang

V=			2.1.12
DISTNAME=		ejabberd-$V
REVISION=		13

CATEGORIES=		net

HOMEPAGE=		https://www.ejabberd.im/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		crypto expat iconv ssl z

MASTER_SITES=		https://www.process-one.net/downloads/ejabberd/$V/
EXTRACT_SUFX=		.tgz

MODULES=		lang/erlang

LIB_DEPENDS=		converters/libiconv

MAKE_FLAGS+=		EJABBERDDIR=${PREFIX}/lib/ejabberd \
			LOGDIR=${EJLOGDIR} \
			ETCDIR=${SYSCONFDIR}/ejabberd \
			SPOOLDIR=${EJDBDIR}
FAKE_FLAGS+=		EJABBERDDIR=${WRKINST}/${PREFIX}/lib/ejabberd \
			LOGDIR=${WRKINST}${EJLOGDIR} \
			ETCDIR=${WRKINST}/${PREFIX}/share/examples/ejabberd \
			SPOOLDIR=${WRKINST}/${EJDBDIR}

CONFIGURE_STYLE=	gnu
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
CONFIGURE_ENV=		HOME=${WRKDIST} \
			ERL=${MODERL_ERL} \
			ERLC=${MODERL_ERLC} \
			ac_cv_header_openssl_md2_h=no

JABBERDUSER=            _ejabberd
JABBERDGROUP=           _ejabberd
EJDBDIR=		/var/db/ejabberd
EJLOGDIR=		/var/log/ejabberd

WRKSRC=			${WRKDIST}/src

NO_TEST=		Yes

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
	${SUBST_CMD} ${PREFIX}/share/examples/ejabberd/ejabberd.cfg
	${SUBST_CMD} ${PREFIX}/sbin/ejabberdctl
	@chown ${SHAREOWN}:${BINGRP} ${PREFIX}/sbin/ejabberdctl
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/ejabberd
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/ejabberd
	@chmod ${SHAREMODE} ${PREFIX}/share/examples/ejabberd/*.cfg
	@find ${WRKINST} -type f -name '*.beforesubst' -delete

.include <bsd.port.mk>
