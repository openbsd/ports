# $OpenBSD: Makefile,v 1.43 2007/07/25 21:31:46 rui Exp $

SHARED_ONLY=	Yes

COMMENT=	secure, fast, compliant, and very flexible web-server

DISTNAME=	lighttpd-1.4.16
CATEGORIES=	www net

MAINTAINER=	Brad Smith <brad@openbsd.org>

HOMEPAGE=	http://www.lighttpd.net/

LIB_DEPENDS+=	pcre::devel/pcre \
		lua.>=5.1::lang/lua

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl z

MASTER_SITES=	${HOMEPAGE}download/

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-openssl \
		 --without-bzip2 \
		 --libdir="${PREFIX}/lib/lighttpd" \
		 --with-lua
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	ldap mysql
FLAVOR?=

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+= --with-ldap
LIB_DEPENDS+=	lber,ldap::databases/openldap
WANTLIB+=	sasl2 asn1 com_err gssapi krb5
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+= --with-mysql
LIB_DEPENDS+=	mysqlclient.>=10::databases/mysql
.endif

pre-build::
	@perl -pi -e "s,/usr/bin/rrdtool,${LOCALBASE}/bin/rrdtool,g" \
	    ${WRKSRC}/doc/lighttpd.conf
	@perl -pi -e "s,/etc/lighttpd,${SYSCONFDIR},g" \
	    ${WRKSRC}/doc/lighttpd.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/lighttpd.conf \
		${PREFIX}/share/examples/lighttpd

.include <bsd.port.mk>
