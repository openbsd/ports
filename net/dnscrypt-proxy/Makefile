# $OpenBSD: Makefile,v 1.4 2013/08/15 11:02:23 sthen Exp $

COMMENT-main=		secure communications between a DNS client and resolver
COMMENT-plugins=	example plugins for dnscrypt-proxy

V=			1.2.0
REVISION=		0

DISTNAME=		dnscrypt-proxy-${V}
CATEGORIES=		net
MASTER_SITES=		https://github.com/downloads/opendns/dnscrypt-proxy/

HOMEPAGE=		http://dnscrypt.org

MAINTAINER=		Frank Denis <dnscrypt@pureftpd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=		-main -plugins

PKGNAME-main=		dnscrypt-proxy-${V}
PKGNAME-plugins=	dnscrypt-proxy-plugins-${V}

commonWANTLIB=		c execinfo kvm m

WANTLIB-main=		${commonWANTLIB} ltdl
WANTLIB-plugins=	${commonWANTLIB} crypto ldns

commonLIB_DEPENDS=	devel/libexecinfo

LIB_DEPENDS-main=	${commonLIB_DEPENDS} devel/libtool,-ltdl
LIB_DEPENDS-plugins=	${commonLIB_DEPENDS} net/ldns/libldns

BUILD_DEPENDS=		devel/libtool

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--enable-plugins --enable-plugins-root
# Don't force PIE, it's broken on at least arm. OpenBSD enables it
# by default on arch where it works anyway.
CONFIGURE_ARGS+=	--enable-pie=no

DOCS=			README-PLUGINS.markdown \
			README.markdown \
			TECHNOTES

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dnscrypt-proxy
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dnscrypt-proxy

.include <bsd.port.mk>
