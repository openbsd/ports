# $OpenBSD: Makefile,v 1.8 2014/09/16 16:26:25 sthen Exp $

COMMENT=	LLDP (802.1ab)/CDP/EDP/SONMP/FDP daemon and SNMP subagent

DISTNAME=	lldpd-0.7.10

SHARED_LIBS +=	lldpctl                   0.1 # 7.0

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://vincentbernat.github.com/lldpd/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c event_core event_extra pthread readline termcap

MASTER_SITES=	http://media.luffy.cx/files/lldpd/

FLAVORS=	snmp
FLAVOR?=

LIB_DEPENDS=	devel/libevent2

SEPARATE_BUILD=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-privsep-chroot=/var/run/lldpd
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"

.if ${FLAVOR:Msnmp}
CONFIGURE_ARGS+=	--with-snmp
LIB_DEPENDS+=		net/net-snmp
WANTLIB += netsnmp netsnmpagent netsnmpmibs
WANTLIB += crypto kvm m perl util
.endif

CPPFLAGS+=		-I${LOCALBASE}/include
LDFLAGS+=		-L${LOCALBASE}/lib

.include <bsd.port.mk>
