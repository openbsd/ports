COMMENT=		highly DNS-, DoS- and abuse-aware loadbalancer

DISTNAME=		dnsdist-1.9.4
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		net

HOMEPAGE=		https://dnsdist.org/

MAINTAINER=		Otto Moerbeek <otto@drijf.net>

# GPLv2 only
PERMIT_PACKAGE=		Yes

FLAVORS=		h3
FLAVOR?=

WANTLIB +=		${MODLUA_WANTLIB} ${COMPILER_LIBCXX} curses crypto edit m \
			fstrm nghttp2 pthread sodium 

SITES=			https://downloads.powerdns.com/releases/

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.71
USE_GMAKE=		Yes

SYSCONFDIR=		${BASESYSCONFDIR}/dnsdist

COMPILER =		base-clang ports-gcc

MODULES+=		lang/lua
MODLUA_VERSION=		5.3


CONFIGURE_ARGS+=	--without-gnutls \
			--disable-hardening \
			--with-lua=lua${MODLUA_VERSION:S/.//} \
			--without-net-snmp \
			--without-libcap \
			--without-ebpf \
			--without-lmdb \
			--with-nghttp2 \
			--enable-dns-over-tls \
			--enable-dnscrypt \
			--enable-dnstap \
			--enable-dns-over-https

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBEDIT_LIBS="-ledit -lcurses" \
			LIBEDIT_CFLAGS=" "

BUILD_DEPENDS=		devel/boost
LIB_DEPENDS+=		${MODLUA_LIB_DEPENDS} \
			security/libsodium \
			net/libfstrm \
			www/nghttp2


.if ${FLAVOR:L:Mh3}

# Lua module overrides FULLPKGNAME
FULLPKGNAME=		${PKGNAME}-${FLAVOR}
CONFIGURE_ARGS+=	--with-libcrypto=${LOCALBASE}/eboringssl \
			--with-quiche \
			--enable-dns-over-quic \
			--enable-dns-over-http3 \

# OpenBSD libtool seems to leave out boringssl libs, because they have the same
# name as system libs, so explicitly refer to the .a files.
CONFIGURE_ENV+=		LIBSSL_CFLAGS="-I${LOCALBASE}/eboringssl/include \
				-DDISABLE_OCSP_STAPLING" \
			LIBSSL_LIBS="${LOCALBASE}/eboringssl/lib/libssl.a \
				${LOCALBASE}/eboringssl/lib/libcrypto.a" \
			QUICHE_CFLAGS=" " \
			QUICHE_LIBS='-lquiche'
BUILD_DEPENDS+=		net/quiche \
			security/boringssl/head
.else

WANTLIB+=		ssl

.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/dnsdist
	cd ${WRKSRC}; ${INSTALL_DATA} README.md ${PREFIX}/share/doc/dnsdist/; \
	    ${INSTALL_DATA} dnsdist.conf-dist ${PREFIX}/share/examples/dnsdist/

.include <bsd.port.mk>
