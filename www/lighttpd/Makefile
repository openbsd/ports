# $OpenBSD: Makefile,v 1.22 2005/10/10 17:03:38 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	"secure, fast, compliant, and very flexible web-server"

DISTNAME=	lighttpd-1.4.6
CATEGORIES=	www net

MAINTAINER=	Brad Smith <brad@openbsd.org>

HOMEPAGE=	http://www.lighttpd.net/

LIB_DEPENDS+=	pcre::devel/pcre

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl z 

MASTER_SITES=	${HOMEPAGE}download/

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-openssl \
		 --without-bzip2 \
		 --libdir="${PREFIX}/lib/lighttpd"
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	ldap mysql
FLAVOR?=

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+= --with-ldap
LIB_DEPENDS+=	lber,ldap::databases/openldap
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+= --with-mysql
LIB_DEPENDS+=	mysqlclient.10::databases/mysql
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lighttpd
	${INSTALL_DATA} ${WRKSRC}/doc/lighttpd.conf \
		${PREFIX}/share/examples/lighttpd

post-configure:
	@perl -pi -e "s,/usr/bin/rrdtool,${LOCALBASE}/bin/rrdtool," \
		${WRKSRC}/doc/lighttpd.conf

.include <bsd.port.mk>
