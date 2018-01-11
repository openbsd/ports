# $OpenBSD: Makefile,v 1.33 2018/01/11 19:27:05 rpe Exp $

COMMENT-main=		secure communications between a DNS client and resolver
COMMENT-plugins=	example plugins for dnscrypt-proxy

# if updating, update to a newer resolvers csv file, or comment-out and
# fall back to the included one
V=			1.9.5
REVISION-main=		1
DISTNAME=		dnscrypt-proxy-${V}
PKGNAME-main=		dnscrypt-proxy-${V}
PKGNAME-plugins=	dnscrypt-proxy-plugins-${V}

R=			20171030
MASTER_SITES0=		https://raw.githubusercontent.com/jedisct1/dnscrypt-proxy/0bbec277e61325a4a2f00e29ab039a7d308fb6c2/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			dnscrypt-resolvers.$R{dnscrypt-resolvers}.csv:0
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}

CATEGORIES=		net

MASTER_SITES=		https://download.dnscrypt.org/dnscrypt-proxy/ \
			https://download.dnscrypt.org/dnscrypt-proxy/old/

HOMEPAGE=		https://dnscrypt.org/

MAINTAINER=		Frank Denis <dnscrypt@pureftpd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=		-main -plugins

commonWANTLIB=		execinfo kvm m sodium pthread

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

# there is also a config file in newer versions; it can be specified on
# the command-line, but it's incompatible with specifying other options there,
# so we can't force daemonizing, causing issues for the rc script.

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dnscrypt-proxy
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dnscrypt-proxy
	${INSTALL_DATA} ${FULLDISTDIR}/dnscrypt-resolvers.$R.csv \
	    ${PREFIX}/share/dnscrypt-proxy/dnscrypt-resolvers.csv
	rm -f ${PREFIX}/lib/dnscrypt-proxy/*.la

.include <bsd.port.mk>
