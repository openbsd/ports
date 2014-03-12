# $OpenBSD: Makefile,v 1.7 2014/03/12 11:26:18 sthen Exp $

MULTI_PACKAGES=	-main -db -ldap
COMMENT-main=	ICAP server for use with web proxies
COMMENT-db=	Berkeley DB module for c-icap
COMMENT-ldap=	LDAP module for c-icap

V=		0.3.3
DISTNAME=	c_icap-$V
PKGNAME-main=	c-icap-$V
PKGNAME-db=	c-icap-db-$V
PKGNAME-ldap=	c-icap-ldap-$V

SHARED_LIBS +=	icapapi                   1.0 # 3.1

WANTLIB += c pthread z

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# ipv6 not yet supported in *BSD.
CONFIGURE_ARGS=	--disable-ipv6 \
		--enable-large-files

FAKE_FLAGS=	CONFIGDIR=${PREFIX}/share/examples/c-icap

.for i in ${MULTI_PACKAGES:N-main}
RUN_DEPENDS$i = ${BASE_PKGPATH}
.endfor

LIB_DEPENDS-db=	databases/db/v4
WANTLIB-db=	${WANTLIB} db icapapi

LIB_DEPENDS-ldap= databases/openldap \
		${BASE_PKGPATH}
WANTLIB-ldap=	asn1 com_err crypto gssapi icapapi krb5 ssl
WANTLIB-ldap+=	lber-2.4 ldap-2.4 pthread sasl2 z
WANTLIB-ldap+=	heimbase roken wind

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/c-icap/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/c-icap/
	rm -f ${PREFIX}/lib/c_icap/*.la

.include <bsd.port.mk>
