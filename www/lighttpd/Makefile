# $OpenBSD: Makefile,v 1.24 2005/11/17 17:21:15 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	"secure, fast, compliant, and very flexible web-server"

DISTNAME=	lighttpd-1.4.7
#PKGNAME=	# also see below
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
PKGNAME=	${DISTNAME}p0
CONFIGURE_ARGS+= --with-ldap
LIB_DEPENDS+=	lber,ldap::databases/openldap
WANTLIB+=	sasl2
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
