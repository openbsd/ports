# $OpenBSD: Makefile,v 1.25 2020/03/10 21:25:07 sthen Exp $

MULTI_PACKAGES=	-main -db -ldap
COMMENT-main=	ICAP server for use with web proxies
COMMENT-db=	Berkeley DB module for c-icap
COMMENT-ldap=	LDAP module for c-icap

V=		0.5.6
REVISION=	0
DISTNAME=	c_icap-$V
PKGNAME-main=	c-icap-$V
PKGNAME-db=	c-icap-db-$V
PKGNAME-ldap=	c-icap-ldap-$V

SHARED_LIBS +=	icapapi                   2.0 # 5.2

WANTLIB += brotlicommon brotlidec brotlienc bz2 pcre pthread z

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# ipv6 not yet supported in *BSD.
CONFIGURE_ARGS=	--disable-ipv6 \
		--enable-large-files \
		--without-memcached \
		--with-pcre

USE_GMAKE=	Yes
FAKE_FLAGS=	CONFIGDIR=${PREFIX}/share/examples/c-icap

.for i in ${MULTI_PACKAGES:N-main}
RUN_DEPENDS$i = ${BASE_PKGPATH}
.endfor

LIB_DEPENDS=	archivers/brotli \
		devel/pcre

WANTLIB-main=	${WANTLIB} c m
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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/c-icap.conf.in
	sed -i s,/usr/local/c-icap/etc,${SYSCONFDIR}, ${WRKSRC}/c-icap.conf.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/c-icap/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/c-icap/
	rm -f ${PREFIX}/lib/c_icap/*.la

.include <bsd.port.mk>
