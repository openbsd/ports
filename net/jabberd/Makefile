# $OpenBSD: Makefile,v 1.14 2005/05/05 15:53:26 jakob Exp $

COMMENT=		"jabber server"
DISTNAME=		jabberd-2.0s8
CATEGORIES=		net
HOMEPAGE=		http://jabberd.jabberstudio.org/2/
MAINTAINER=		Gerardo Santana Gomez Garrido <santana@openbsd.org.mx>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl z

MASTER_SITES=		http://files.jabberstudio.org/jabberd2/

JABBERDUSER=		_jabberd
JABBERDGROUP=		_jabberd
JABBERDDIR=		/var/jabberd

CONFIG_DIR=		${SYSCONFDIR}/jabberd
EXAMPLES=		${PREFIX}/share/examples/jabberd

SUBST_VARS=		CONFIG_DIR EXAMPLES \
			JABBERDUSER JABBERDGROUP JABBERDDIR

FLAVORS=		mysql ldap
FLAVOR?=		mysql

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var \
			--enable-ssl \
			--disable-idn \
			--with-extra-include-path=${LOCALBASE}/include \
			--with-extra-library-path=${LOCALBASE}/lib

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=		lib/mysql/mysqlclient.10::databases/mysql
CONFIGURE_ARGS+=	--enable-mysql
.else
CONFIGURE_ARGS+=	--disable-mysql
.endif

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=		ldap.2,lber:openldap-client-2.*:databases/openldap
CONFIGURE_ARGS+=	--enable-ldap
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

.if ! ${FLAVOR:L:Mmysql}
BROKEN=			"You need to select at least one storage driver"
.endif

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tools/jabberd ${PREFIX}/sbin
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/jabberd
.for dir in c2s resolver router s2s sm
	${INSTALL_PROGRAM} ${WRKSRC}/${dir}/${dir} ${PREFIX}/libexec/jabberd
.endfor
	${INSTALL_MAN} ${WRKSRC}/man/*.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA_DIR} ${EXAMPLES}/templates
	${INSTALL_DATA} ${WRKSRC}/etc/jabberd.cfg.dist ${EXAMPLES}/jabberd.cfg
	${INSTALL_DATA} ${WRKSRC}/etc/c2s.xml.dist ${EXAMPLES}/c2s.xml
	${INSTALL_DATA} ${WRKSRC}/etc/resolver.xml.dist ${EXAMPLES}/resolver.xml
	${INSTALL_DATA} ${WRKSRC}/etc/router-users.xml.dist ${EXAMPLES}/router-users.xml
	${INSTALL_DATA} ${WRKSRC}/etc/router.xml.dist ${EXAMPLES}/router.xml
	${INSTALL_DATA} ${WRKSRC}/etc/s2s.xml.dist ${EXAMPLES}/s2s.xml
	${INSTALL_DATA} ${WRKSRC}/etc/sm.xml.dist ${EXAMPLES}/sm.xml
	${INSTALL_DATA} ${WRKSRC}/etc/templates/roster.xml.dist ${EXAMPLES}/templates/roster.xml
	${INSTALL_DATA} ${WRKSRC}/tools/db-setup.mysql ${EXAMPLES}

.include <bsd.port.mk>
