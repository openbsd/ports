# $OpenBSD: Makefile,v 1.2 2006/11/03 15:16:41 mbalmer Exp $

COMMENT=		"authentication library for courier"
COMMENT-ldap=		"ldap authentication module for courier-authLib"
COMMENT-mysql=		"mysql authentication module for courier-authLib"
COMMENT-pgsql=		"pgsql authentication module for courier-authLib"
COMMENT-userdb=		"userdb authentication module for courier-authLib"

DISTNAME=		courier-authlib-0.58
PKGNAME=		${DISTNAME}p0
PKGNAME-ldap=		${DISTNAME:S/lib-/lib-ldap-/}p0
PKGNAME-mysql=		${DISTNAME:S/lib-/lib-mysql-/}p0
PKGNAME-pgsql=		${DISTNAME:S/lib-/lib-pgsql-/}p0
PKGNAME-userdb=		${DISTNAME:S/lib-/lib-userdb-/}p0

SHARED_LIBS=		authpipe		0.0 \
			authpwd			0.0 \
			courierauth		0.0 \
			courierauthcommon	0.0 \
			courierauthsasl		0.0 \
			courierauthsaslclient	0.0

CATEGORIES=		mail security
HOMEPAGE=		http://www.courier-mta.org/authlib/
MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=		.tar.bz2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		LIBS="-L${LOCALBASE}/lib" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

COURIERSTATE=		/var/run/courier-auth
EXAMPLE_DIR=		${PREFIX}/share/examples/courier-authlib
SUBST_VARS=		COURIERSTATE EXAMPLE_DIR

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static \
			--without-authpam \
			--without-authvchkpw \
			--without-authcustom \
			--with-authpwd \
			--with-authshadow \
			--with-mailuser=_courier \
			--with-mailgroup=_courier \
			--with-pkgconfdir=${SYSCONFDIR}/courier \
			--with-authdaemonvar=${COURIERSTATE} \
			--localstatedir=/var \
			--libdir=${PREFIX}/lib \
			--includedir=${PREFIX}/include \
			--enable-ltdl-install=no \
			--cache-file=${WRKDIR}/courier-authlib.cache

DOCS=			COPYING COPYING.GPL INSTALL NEWS README

MULTI_PACKAGES=
SUBPACKAGE?=
FLAVOR?=
PSEUDO_FLAVORS=		no_ldap no_mysql no_pgsql no_userdb

.if !defined(PACKAGING) || ${SUBPACKAGE} == ""
WANTLIB+=		c
LIB_DEPENDS+=		ltdl::devel/libtool,-ltdl
.endif

.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-authldap
.else
SHARED_LIBS+=		authldap		0.0
MULTI_PACKAGES+=	-ldap
CONFIGURE_ARGS+=	--with-authldap
DOCS+=			README.ldap
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-ldap"
WANTLIB+=		crypto ssl
LIB_DEPENDS+=		ldap,lber::databases/openldap \
			sasl2::security/cyrus-sasl2
.    if defined(PACKAGING)
LIB_DEPENDS+=		courierauthcommon,courierauth::mail/courier-authlib
.    endif
.  endif
.endif

.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-authmysql
.else
SHARED_LIBS+=		authmysql		0.0
MULTI_PACKAGES+=	-mysql
CONFIGURE_ARGS+=	--with-authmysql \
			--with-mysql-libs=${LOCALBASE}/lib/mysql \
			--with-mysql-includes=${LOCALBASE}/include/mysql
DOCS+=			README.authmysql.myownquery
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-mysql"
WANTLIB+=		crypto m ssl z
LIB_DEPENDS+=		mysqlclient::databases/mysql
.    if defined(PACKAGING)
LIB_DEPENDS+=		courierauthcommon,courierauth::mail/courier-authlib
.    endif
.  endif
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-authpgsql
.else
SHARED_LIBS+=		authpgsql		0.0
MULTI_PACKAGES+=	-pgsql
CONFIGURE_ARGS+=	--with-authpgsql \
			--with-pgsql-libs=${LOCALBASE}/lib \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-pgsql"
WANTLIB+=		m
LIB_DEPENDS+=		pq::databases/postgresql
.    if defined(PACKAGING)
LIB_DEPENDS+=		courierauthcommon,courierauth::mail/courier-authlib
.    endif
.  endif
.endif

.if ${FLAVOR:L:Mno_userdb}
CONFIGURE_ARGS+=	--without-authuserdb \
			--without-makedatprog
.else
SHARED_LIBS+=		authuserdb		0.0
MULTI_PACKAGES+=	-userdb
CONFIGURE_ARGS+=	--with-makedatprog \
			--with-authuserdb \
			--with-db=gdbm
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-userdb"
WANTLIB+=		c
LIB_DEPENDS+=		gdbm.>=3::databases/gdbm
.    if defined(PACKAGING)
LIB_DEPENDS+=		courierauthcommon,courierauth::mail/courier-authlib
.    endif
.  endif
.endif

post-install:
	mv ${PREFIX}/lib/courier-authlib/lib* ${PREFIX}/lib

	${INSTALL_SCRIPT} ${WRKSRC}/sysconftool \
	    ${PREFIX}/libexec/courier-authlib/sysconftool
	${INSTALL_SCRIPT} ${WRKSRC}/authmigrate \
	    ${PREFIX}/libexec/courier-authlib/authmigrate
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	@mv ${WRKINST}${SYSCONFDIR}/courier/*.dist ${EXAMPLE_DIR}
.	if !${FLAVOR:L:Mno_ldap}
	    ${INSTALL_DATA} ${WRKSRC}/authldap.schema ${EXAMPLE_DIR}
.	endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/courier-authlib
.	for i in ${DOCS}
	    ${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/courier-authlib
.	endfor

.include <bsd.port.mk>
