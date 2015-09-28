# $OpenBSD: Makefile,v 1.13 2015/09/28 11:57:50 sthen Exp $

MULTI_PACKAGES=	-main -db -ldap
COMMENT-main=	ICAP server for use with web proxies
COMMENT-db=	Berkeley DB module for c-icap
COMMENT-ldap=	LDAP module for c-icap

V=		0.4.2
DISTNAME=	c_icap-$V
PKGNAME-main=	c-icap-$V
PKGNAME-db=	c-icap-db-$V
PKGNAME-ldap=	c-icap-ldap-$V

SHARED_LIBS +=	icapapi                   1.1 # 4.1

WANTLIB += bz2 pcre pthread z

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# ipv6 not yet supported in *BSD.
CONFIGURE_ARGS=	--disable-ipv6 \
		--enable-large-files \
		--without-memcached \
		--with-pcre

FAKE_FLAGS=	CONFIGDIR=${PREFIX}/share/examples/c-icap

.for i in ${MULTI_PACKAGES:N-main}
RUN_DEPENDS$i = ${BASE_PKGPATH}
.endfor

LIB_DEPENDS=	devel/pcre

WANTLIB-main=	${WANTLIB} c
LIB_DEPENDS-main= ${LIB_DEPENDS} \
		archivers/bzip2

LIB_DEPENDS-db=	${LIB_DEPENDS} \
		${BASE_PKGPATH} \
		databases/db/v4
WANTLIB-db=	${WANTLIB} c db icapapi

LIB_DEPENDS-ldap= ${LIB_DEPENDS} \
		${BASE_PKGPATH} \
		databases/openldap
WANTLIB-ldap=	${WANTLIB} crypto icapapi lber-2.4 ldap-2.4 sasl2 ssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/c-icap/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/c-icap/
	rm -f ${PREFIX}/lib/c_icap/*.la

.include <bsd.port.mk>
