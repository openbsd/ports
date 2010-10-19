# $OpenBSD: Makefile,v 1.73 2010/10/19 08:02:53 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	secure, fast, compliant, and very flexible web-server

DISTNAME=	lighttpd-1.4.28
REVISION=	0
CATEGORIES=	www net
MASTER_SITES=	http://download.lighttpd.net/lighttpd/releases-1.4.x/

HOMEPAGE=	http://www.lighttpd.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl z

LIB_DEPENDS+=	pcre::devel/pcre \
		lua.>=5.1::lang/lua
RUN_DEPENDS+=	:spawn-fcgi-*:www/spawn-fcgi

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
USE_GROFF =	Yes
CONFIGURE_STYLE= autoconf
# Should be 2.65
AUTOCONF_VERSION= 2.64
CONFIGURE_ARGS+= --libdir="${PREFIX}/lib/lighttpd" \
		 --with-lua \
		 --with-openssl \
		 --without-bzip2
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

post-extract:
	@cp -f ${FILESDIR}/lighttpd.conf ${WRKSRC}/doc

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/lighttpd.conf ${WRKSRC}/doc/lighttpd.8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lighttpd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt \
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
