# $OpenBSD: Makefile,v 1.11 2009/10/28 14:18:04 giovanni Exp $

COMMENT-main=		authentication library for courier
COMMENT-ldap=		ldap authentication module for courier-authLib
COMMENT-mysql=		mysql authentication module for courier-authLib
COMMENT-pgsql=		pgsql authentication module for courier-authLib
COMMENT-userdb=		userdb authentication module for courier-authLib

DISTNAME=		courier-authlib-0.62.4
PKGNAME-main=		${DISTNAME}
PKGNAME-ldap=		${DISTNAME:S/lib-/lib-ldap-/}
PKGNAME-mysql=		${DISTNAME:S/lib-/lib-mysql-/}
PKGNAME-pgsql=		${DISTNAME:S/lib-/lib-pgsql-/}
PKGNAME-userdb=		${DISTNAME:S/lib-/lib-userdb-/}

SHARED_LIBS +=  courierauth          0.0      # .0.0
SHARED_LIBS +=  courierauthsasl      1.0      # .0.0
SHARED_LIBS +=  courierauthsaslclient 0.0     # .0.0
SHARED_LIBS +=  courierauthcommon    0.0      # .0.0
SHARED_LIBS +=  authuserdb           0.0      # .0.0
SHARED_LIBS +=  authpwd              0.0      # .0.0
SHARED_LIBS +=  authpgsql            0.0      # .0.0
SHARED_LIBS +=  authldap             0.0      # .0.0
SHARED_LIBS +=  authmysql            0.0      # .0.0
SHARED_LIBS +=  authpipe             0.0      # .0.0

CATEGORIES=		mail security
HOMEPAGE=		http://www.courier-mta.org/authlib/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
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
			--with-ltdl-lib=${LOCALBASE}/lib \
			--cache-file=${WRKDIR}/courier-authlib.cache

RUN_DEPENDS-main=	:expect-*:lang/expect,no_tk
BUILD_DEPENDS=		${RUN_DEPENDS-main}

DOCS=			COPYING COPYING.GPL INSTALL NEWS README

MULTI_PACKAGES=		-main
FLAVOR?=
PSEUDO_FLAVORS=		no_ldap no_mysql no_pgsql no_userdb

WANTLIB-main=		c

LIB_DEPENDS-main=	ltdl::devel/libtool,-ltdl

WANTLIB-ldap=		crypto ssl asn1 com_err gssapi krb5
LIB_DEPENDS-ldap=	courierauthcommon,courierauth::${BUILD_PKGPATH} \
			ldap,lber::databases/openldap \
			sasl2::security/cyrus-sasl2

WANTLIB-mysql=		crypto m ssl z
LIB_DEPENDS-mysql=	courierauthcommon,courierauth::${BUILD_PKGPATH} \
			mysqlclient::databases/mysql

WANTLIB-pgsql=		m
LIB_DEPENDS-pgsql=	courierauthcommon,courierauth::${BUILD_PKGPATH} \
			pq::databases/postgresql

WANTLIB-userdb=		c
LIB_DEPENDS-userdb=	courierauthcommon,courierauth::${BUILD_PKGPATH} \
			gdbm.>=3::databases/gdbm


.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-authldap
.else
MULTI_PACKAGES+=	-ldap
CONFIGURE_ARGS+=	--with-authldap
DOCS+=			README.ldap
.endif

.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-authmysql
.else
MULTI_PACKAGES+=	-mysql
CONFIGURE_ARGS+=	--with-authmysql \
			--with-mysql-libs=${LOCALBASE}/lib/mysql \
			--with-mysql-includes=${LOCALBASE}/include/mysql
DOCS+=			README.authmysql.myownquery
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-authpgsql
.else
MULTI_PACKAGES+=	-pgsql
CONFIGURE_ARGS+=	--with-authpgsql \
			--with-pgsql-libs=${LOCALBASE}/lib \
			--with-pgsql-includes=${LOCALBASE}/include/postgresql
.endif

.if ${FLAVOR:L:Mno_userdb}
CONFIGURE_ARGS+=	--without-authuserdb \
			--without-makedatprog
.else
MULTI_PACKAGES+=	-userdb
CONFIGURE_ARGS+=	--with-makedatprog=${PREFIX}/libexec/courier-authlib/makedatprog \
			--with-authuserdb \
			--with-db=gdbm
.endif

post-install:
	mv ${PREFIX}/lib/courier-authlib/lib* ${PREFIX}/lib

	${INSTALL_SCRIPT} ${WRKSRC}/sysconftool \
	    ${PREFIX}/libexec/courier-authlib/sysconftool
	${INSTALL_SCRIPT} ${WRKSRC}/authmigrate \
	    ${PREFIX}/libexec/courier-authlib/authmigrate
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	@mv ${WRKINST}${SYSCONFDIR}/courier/*.dist ${EXAMPLE_DIR}
	@chown root:wheel ${EXAMPLE_DIR}/*
.	if !${FLAVOR:L:Mno_ldap}
	    ${INSTALL_DATA} ${WRKSRC}/authldap.schema ${EXAMPLE_DIR}
.	endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/courier-authlib
.	for i in ${DOCS}
	    ${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/courier-authlib
.	endfor

.include <bsd.port.mk>
