# $OpenBSD: Makefile,v 1.1.1.1 2017/01/15 17:13:33 sthen Exp $

COMMENT=		highly DNS-, DoS- and abuse-aware loadbalancer

DISTNAME=		dnsdist-1.1.0
EXTRACT_SUFX=		.tar.bz2

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/dnsdist
	cd ${WRKSRC}; ${INSTALL_DATA} README.md ${PREFIX}/share/doc/dnsdist/; \
	    ${INSTALL_DATA} dnsdistconf.lua ${PREFIX}/share/examples/dnsdist/

.include <bsd.port.mk>
