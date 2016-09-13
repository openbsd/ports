# $OpenBSD: Makefile,v 1.24 2016/09/13 21:36:47 tj Exp $

COMMENT-main=		secure communications between a DNS client and resolver
COMMENT-plugins=	example plugins for dnscrypt-proxy

V=			1.7.0
REVISION=		1

DISTNAME=		dnscrypt-proxy-${V}
CATEGORIES=		net
MASTER_SITES=		https://download.dnscrypt.org/dnscrypt-proxy/ \
			https://download.dnscrypt.org/dnscrypt-proxy/old/

HOMEPAGE=		https://dnscrypt.org/

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib \
			ac_cv_header_uuid_uuid_h=no

.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ENV +=	libevent_cv_gc_sections_runs=no
.endif

CONFIGURE_ARGS+=	--enable-plugins \
			--enable-plugins-root \
			--enable-pie=no
# Don't force PIE, it's broken on at least arm. OpenBSD enables it
# by default on arch where it works anyway.

# for tests
USE_GMAKE=		yes

DOCS=			README-PLUGINS.markdown \
			README.markdown \
			DNSCRYPT-V2-PROTOCOL.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dnscrypt-proxy
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dnscrypt-proxy
	rm -f ${PREFIX}/lib/dnscrypt-proxy/*.la

.include <bsd.port.mk>
