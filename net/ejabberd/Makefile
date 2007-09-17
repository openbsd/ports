# $OpenBSD: Makefile,v 1.1.1.1 2007/09/17 21:19:06 jasper Exp $

COMMENT=		jabber server written in Erlang

DISTNAME=		ejabberd-1.1.3

CATEGORIES=		net chat

HOMEPAGE=		http://ejabberd.jabber.ru/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		expat crypto ssl z

MASTER_SITES=		http://www.process-one.net/downloads/ejabberd/1.1.3/

MODULES=		converters/libiconv
BUILD_DEPENDS=		:erlang-*:lang/erlang
RUN_DEPENDS=		:erlang-*:lang/erlang

MAKE_FLAGS+=		EJABBERDDIR=${PREFIX}/lib/ejabberd \
			LOGDIR=${EJLOGDIR} \
			ETCDIR=${SYSCONFDIR}/ejabberd
FAKE_FLAGS+=		EJABBERDDIR=${WRKINST}/${PREFIX}/lib/ejabberd \
			LOGDIR=${WRKINST}${EJLOGDIR} \
			ETCDIR=${WRKINST}/${PREFIX}/share/examples/ejabberd

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
SHARED_ONLY=		Yes
CONFIGURE_ARGS+=	--with-expat=${X11BASE} \
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

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/ejabberd ${PREFIX}/sbin/
	${INSTALL_SCRIPT} ${FILESDIR}/ejabberdctl ${PREFIX}/bin/
	${INSTALL_DATA} ${FILESDIR}/ejabberd.inetrc ${PREFIX}/share/examples/ejabberd/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ejabberd
	cd ${WRKDIST}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ejabberd/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/examples/ejabberd/{} \;
	${INSTALL_DATA} ${WRKSRC}/odbc/pg.sql ${PREFIX}/share/examples/ejabberd/
	${INSTALL_DATA} ${WRKSRC}/odbc/mysql.sql ${PREFIX}/share/examples/ejabberd/
	cd ${WRKDIST}/doc && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ejabberd/{} \; && \
		find . -name '*.html' -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/ejabberd/{} \; && \
		find . -name '*.png' -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/ejabberd/{} \;
	perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g;" \
		-e "s,!!SYSCONFDIR!!,${SYSCONFDIR},g;" \
		-e "s,!!EJDBDIR!!,${EJDBDIR},g;" \
		-e "s,!!EJLOGDIR!!,${EJLOGDIR},g;" \
		-e "s,!!JABBERDUSER!!,${JABBERDUSER},g;" \
		${PREFIX}/sbin/ejabberd
	perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g;" \
		-e "s,!!EJDBDIR!!,${EJDBDIR},g;" \
		-e "s,!!JABBERDUSER!!,${JABBERDUSER},g;" \
		${PREFIX}/bin/ejabberdctl

.include <bsd.port.mk>
