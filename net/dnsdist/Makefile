# $OpenBSD: Makefile,v 1.26 2022/01/18 06:29:19 otto Exp $

COMMENT=		highly DNS-, DoS- and abuse-aware loadbalancer

DISTNAME=		dnsdist-1.7.0
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		net

HOMEPAGE=		https://dnsdist.org/

MAINTAINER=		Otto Moerbeek <otto@drijf.net>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB +=		${MODLUA_WANTLIB} c curses edit m \
			fstrm h2o-evloop nghttp2 pthread \
			z crypto ssl sodium ${COMPILER_LIBCXX}

MASTER_SITES=		https://downloads.powerdns.com/releases/

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
USE_GMAKE=		Yes

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
#
# On at least amd64 using clang13 dnsdist-lua-bindings.cc gets
# miscompiled with -O2, resulting in a segfault on startup
#
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBEDIT_LIBS='-ledit -lcurses' \
			LIBEDIT_CFLAGS=' '
SYSCONFDIR=		${BASESYSCONFDIR}/dnsdist

COMPILER =		base-clang ports-gcc

MODULES+=		lang/lua
MODLUA_VERSION=		5.3

BUILD_DEPENDS=		devel/boost
LIB_DEPENDS+=		${MODLUA_LIB_DEPENDS} \
			security/libsodium \
			net/libfstrm \
			www/h2o \
			www/nghttp2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/dnsdist
	cd ${WRKSRC}; ${INSTALL_DATA} README.md ${PREFIX}/share/doc/dnsdist/; \
	    ${INSTALL_DATA} dnsdistconf.lua ${PREFIX}/share/examples/dnsdist/

.include <bsd.port.mk>
