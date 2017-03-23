# $OpenBSD: Makefile,v 1.3 2017/03/23 11:58:44 danj Exp $

COMMENT=		highly DNS-, DoS- and abuse-aware loadbalancer

DISTNAME=		dnsdist-1.1.0
EXTRACT_SUFX=		.tar.bz2

REVISION=		0

CATEGORIES=		net

HOMEPAGE=		http://dnsdist.org/

MAINTAINER=		Peter van Dijk <peter.van.dijk@powerdns.com>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODLUA_WANTLIB} c curses edit m protobuf pthread z

MASTER_SITES=		https://downloads.powerdns.com/releases/

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
USE_GMAKE=		Yes

CONFIGURE_ARGS+=	--disable-hardening \
			--with-lua
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBEDIT_LIBS='-ledit -lcurses' \
			LIBEDIT_CFLAGS=' '
SYSCONFDIR=		${BASESYSCONFDIR}/dnsdist

MODULES+=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

MODULES+=		lang/lua
MODLUA_VERSION=		5.3

BUILD_DEPENDS=		devel/boost
LIB_DEPENDS+=		${MODLUA_LIB_DEPENDS} \
			devel/protobuf

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
