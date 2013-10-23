# $OpenBSD: Makefile,v 1.7 2013/10/23 13:14:07 sthen Exp $

COMMENT-main=		secure communications between a DNS client and resolver
COMMENT-plugins=	example plugins for dnscrypt-proxy

V=			1.3.3
REVISION=		0

DISTNAME=		dnscrypt-proxy-${V}
CATEGORIES=		net
MASTER_SITES=		http://download.dnscrypt.org/dnscrypt-proxy/ \
			http://download.dnscrypt.org/dnscrypt-proxy/old/

HOMEPAGE=		http://dnscrypt.org/

MAINTAINER=		Frank Denis <dnscrypt@pureftpd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=		-main -plugins

PKGNAME-main=		dnscrypt-proxy-${V}
PKGNAME-plugins=	dnscrypt-proxy-plugins-${V}

commonWANTLIB=		execinfo kvm m sodium

WANTLIB-main=		${commonWANTLIB} c ltdl
WANTLIB-plugins=	${commonWANTLIB} crypto ldns

commonLIB_DEPENDS=	devel/libexecinfo \
			security/libsodium

LIB_DEPENDS-main=	${commonLIB_DEPENDS} \
			devel/libtool,-ltdl
LIB_DEPENDS-plugins=	${commonLIB_DEPENDS} \
			net/ldns/libldns

BUILD_DEPENDS=		devel/libtool

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ARGS+=	--enable-plugins \
			--enable-plugins-root \
			--enable-pie=no
# Don't force PIE, it's broken on at least arm. OpenBSD enables it
# by default on arch where it works anyway.

# libevent test hangs. (note that currently tests also need USE_GMAKE=yes).
NO_TEST=		Yes

DOCS=			README-PLUGINS.markdown \
			README.markdown \
			TECHNOTES

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
post-patch:
	cd ${WRKSRC}/src/libevent-modified; \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh ./autogen.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dnscrypt-proxy
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dnscrypt-proxy
	rm -f ${PREFIX}/lib/dnscrypt-proxy/*.la

.include <bsd.port.mk>
