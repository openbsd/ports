# $OpenBSD: Makefile,v 1.7 2019/07/17 05:27:33 otto Exp $

COMMENT=		recursive nameserver

V=			4.2.0
DISTNAME=		pdns-recursor-${V}
EXTRACT_SUFX =		.tar.bz2
PKGNAME=		powerdns-recursor-${V}

CATEGORIES=		net

HOMEPAGE=		https://www.powerdns.com/

# GPLv2 only, OpenSSL exemption
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} boost_context-mt boost_system-mt
WANTLIB += boost_thread-mt c crypto m sodium

MASTER_SITES=		https://downloads.powerdns.com/releases/
MAINTAINER=     	Otto Moerbeek <otto@drijf.net>

COMPILER =		base-clang ports-gcc

NO_TEST=		Yes

LIB_DEPENDS=		devel/boost \
			devel/boost,-md \
			security/libsodium

MODULES+=		lang/lua
MODLUA_VERSION=		5.3
MODLUA_SA=		Yes
LIB_DEPENDS+=		${MODLUA_LIB_DEPENDS}
WANTLIB+=		${MODLUA_WANTLIB}

SYSCONFDIR=		${BASESYSCONFDIR}/pdns

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--disable-botan \
			--disable-libdecaf \
			--without-protobuf \
			--with-lua=${MODLUA_DEP} \
			--without-net-snmp \
			--without-systemd

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

EXAMPLE_DIR=            ${PREFIX}/share/examples/pdns/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	cat ${FILESDIR}/recursor.conf ${WRKSRC}/recursor.conf-dist > \
	    ${WRKSRC}/recursor.conf # concatenate local and upstream sample configs
	${INSTALL_DATA} ${WRKSRC}/recursor.conf ${EXAMPLE_DIR}
	rm ${WRKINST}${SYSCONFDIR}/recursor.conf-dist

.include <bsd.port.mk>
