COMMENT-main=	server to accept passive check results for Nagios/Icinga
COMMENT-client=	client to send passive check results to Nagios/Icinga

V=		1.6
REVISION=	6
DISTNAME=	nsca-ng-$V
PKGNAME-main=	nsca-ng-$V
PKGNAME-client=	nsca-ng-client-$V
CATEGORIES=	net

HOMEPAGE=	https://www.nsca-ng.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c ev lib/eopenssl35/crypto lib/eopenssl35/ssl
WANTLIB-main=	${WANTLIB} confuse

SITES=			https://github.com/weiss/nsca-ng/releases/download/v$V/

# OpenSSL used for PSK (SSL_get_psk_identity)
LIB_DEPENDS=		devel/libev \
			security/openssl/3.5
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/libconfuse

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-server
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/eopenssl35" \
			LDFLAGS="-L${LOCALBASE}/lib/eopenssl35 -Wl,-rpath,${LOCALBASE}/lib/eopenssl35"
SEPARATE_BUILD=		Yes

MULTI_PACKAGES=		-main -client

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/nsca-ng

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios/
	cd ${WRKSRC}/contrib; ${INSTALL_DATA} README acknowledge debug_server \
	    disable_notifications downtime enable_notifications invoke_check \
	    ${PREFIX}/share/examples/nsca-ng/
	ln -s ${TRUEPREFIX}/sbin/send_nsca ${PREFIX}/libexec/nagios/send_nsca

.include <bsd.port.mk>
