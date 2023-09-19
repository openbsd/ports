COMMENT=	LLDP (802.1ab)/CDP/EDP/SONMP/FDP daemon and SNMP subagent

DISTNAME=	lldpd-1.0.17

SHARED_LIBS +=	lldpctl                   2.3 # 13.0

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	https://lldpd.github.io/

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += c curses event_core event_extra pthread readline

SITES=		https://media.luffy.cx/files/lldpd/

FLAVORS=	snmp
FLAVOR?=

LIB_DEPENDS=	devel/libevent2

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-privsep-chroot=/var/run/lldpd \
			--without-json \
			--without-xml
# OpenBSD already enables PIE by default where it works; don't force
# on remaining arch. But do keep -fstack-protector-all which the default
# --with-hardening also adds.
CONFIGURE_ARGS+=	--without-hardening
CFLAGS+=		-fstack-protector-all
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		sysconfdir="${PREFIX}/share/examples/lldpd"

CPPFLAGS+=		-I${LOCALBASE}/include
LDFLAGS+=		-L${LOCALBASE}/lib

.if ${FLAVOR:Msnmp}
CONFIGURE_ARGS+=	--with-snmp
LIB_DEPENDS+=		net/net-snmp
WANTLIB += netsnmp netsnmpagent netsnmpmibs
WANTLIB += crypto kvm m perl
.endif

.include <bsd.port.mk>
