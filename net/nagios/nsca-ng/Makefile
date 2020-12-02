# $OpenBSD: Makefile,v 1.18 2020/12/02 17:29:08 sthen Exp $

COMMENT-main=	server to accept passive check results for Nagios/Icinga
COMMENT-client=	client to send passive check results to Nagios/Icinga

V=		1.6
REVISION=	0
DISTNAME=	nsca-ng-$V
PKGNAME-main=	nsca-ng-$V
PKGNAME-client=	nsca-ng-client-$V
CATEGORIES=	net

HOMEPAGE=	https://www.nsca-ng.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c ev lib/eopenssl/crypto lib/eopenssl/ssl
WANTLIB-main=	${WANTLIB} confuse

MASTER_SITES=		https://github.com/weiss/nsca-ng/releases/download/v$V/

# as a special case, this is linked against OpenSSL because LibreSSL
# does not support PSK.

LIB_DEPENDS=		devel/libev \
			security/openssl/1.0.2
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/libconfuse

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-server
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/eopenssl" \
			LDFLAGS="-L${LOCALBASE}/lib/eopenssl -Wl,-rpath,${LOCALBASE}/lib/eopenssl"
SEPARATE_BUILD=		Yes

MULTI_PACKAGES=		-main -client

RUN_DEPENDS-main=	icinga-*|nagios-*:net/nagios/nagios
FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/nsca-ng

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios/
	cd ${WRKSRC}/contrib; ${INSTALL_DATA} README acknowledge debug_server \
	    disable_notifications downtime enable_notifications invoke_check \
	    ${PREFIX}/share/examples/nsca-ng/
	ln -s ${TRUEPREFIX}/sbin/send_nsca ${PREFIX}/libexec/nagios/send_nsca

.include <bsd.port.mk>
