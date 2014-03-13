# $OpenBSD: Makefile,v 1.121 2014/03/13 10:42:29 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	secure, fast, compliant, and very flexible web-server

DISTNAME=	lighttpd-1.4.35
CATEGORIES=	www net
MASTER_SITES=	http://download.lighttpd.net/lighttpd/releases-1.4.x/

HOMEPAGE=	http://www.lighttpd.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m pcre ssl z ${MODLUA_WANTLIB}

MODULES=	lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS+=	devel/pcre \
		${MODLUA_LIB_DEPENDS}
RUN_DEPENDS+=	www/spawn-fcgi

LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --libdir="${PREFIX}/lib/lighttpd" \
		 --with-lua \
		 --with-openssl \
		 --without-bzip2 \
		 --without-libev
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LUA_CFLAGS="`pkg-config --cflags ${MODLUA_DEP}`" \
		LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

FLAVORS=	ldap mysql
FLAVOR?=

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+= --with-ldap
LIB_DEPENDS+=	databases/openldap
WANTLIB+=	sasl2 asn1 com_err gssapi krb5 wind
WANTLIB+=	heimbase lber-2.4 ldap-2.4 roken
.endif

.if ${FLAVOR:Mmysql}
CONFIGURE_ARGS+= --with-mysql
LIB_DEPENDS+=	databases/mysql
WANTLIB +=	mysqlclient>=10
.endif

post-extract:
	@cp -f ${FILESDIR}/lighttpd.conf ${WRKSRC}/doc

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/lighttpd.conf ${WRKSRC}/doc/lighttpd.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lighttpd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/outdated/*.txt \
	    ${PREFIX}/share/doc/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/lighttpd.conf \
	    ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/scripts/spawn-php.sh \
	    ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} /dev/null \
	    ${PREFIX}/share/examples/lighttpd/access.log
	${INSTALL_DATA} /dev/null \
	    ${PREFIX}/share/examples/lighttpd/error.log

.include <bsd.port.mk>
