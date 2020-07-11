# $OpenBSD: Makefile,v 1.42 2020/07/11 22:54:37 sthen Exp $

COMMENT=	LLDP (802.1ab)/CDP/EDP/SONMP/FDP daemon and SNMP subagent

DISTNAME=	lldpd-1.0.5
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		LLDP-MIB-200505060000Z.txt:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
REVISION=	0

SHARED_LIBS +=	lldpctl                   2.2 # 11.0

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	http://vincentbernat.github.com/lldpd/

# Program: ISC. Bundled MIB is from IEEE 802.1AB-2005; "Users of this
# standard may freely reproduce the MIB contained in this subclause so
# that it can be used for its intended purpose."
PERMIT_PACKAGE=	Yes

WANTLIB += c curses event_core event_extra pthread readline

MASTER_SITES=	http://media.luffy.cx/files/lldpd/
MASTER_SITES0=	http://www.ieee802.org/1/files/public/MIBs/

FLAVORS=	snmp
FLAVOR?=

LIB_DEPENDS=	devel/libevent2

SEPARATE_BUILD=	Yes
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/snmp/mibs/
	${INSTALL_DATA} ${FULLDISTDIR}/LLDP-MIB-200505060000Z.txt \
		${PREFIX}/share/snmp/mibs/LLDP-MIB.txt
.endif

.include <bsd.port.mk>
