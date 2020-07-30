# $OpenBSD: Makefile,v 1.18 2020/07/30 14:25:11 otto Exp $

COMMENT=		highly DNS-, DoS- and abuse-aware loadbalancer

DISTNAME=		dnsdist-1.5.0
EXTRACT_SUFX=		.tar.bz2
#REVISION=		0

CATEGORIES=		net

HOMEPAGE=		https://dnsdist.org/

MAINTAINER=		Otto Moerbeek <otto@drijf.net>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB +=		${MODLUA_WANTLIB} c curses edit m \
			protobuf fstrm h2o-evloop pthread \
			z crypto ssl sodium ${COMPILER_LIBCXX}

MASTER_SITES=		https://downloads.powerdns.com/releases/

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.69
USE_GMAKE=		Yes

CONFIGURE_ARGS+=	--without-gnutls \
			--disable-hardening \
			--with-lua=lua${MODLUA_VERSION:S/.//} \
			--without-net-snmp \
			--without-libcap \
			--without-ebpf \
			--without-lmdb \
			--enable-dns-over-tls \
			--enable-dnscrypt \
			--enable-dnstap \
			--enable-dns-over-https
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
			devel/protobuf \
			net/libfstrm \
			www/h2o

.if ${MACHINE_ARCH:Mi386}
# needs 64-bit atomics
CFLAGS+=		-march=i586
CXXFLAGS+=		-march=i586
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/dnsdist
	cd ${WRKSRC}; ${INSTALL_DATA} README.md ${PREFIX}/share/doc/dnsdist/; \
	    ${INSTALL_DATA} dnsdistconf.lua ${PREFIX}/share/examples/dnsdist/

.include <bsd.port.mk>
