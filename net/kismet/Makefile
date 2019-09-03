# $OpenBSD: Makefile,v 1.50 2019/09/03 10:50:33 sthen Exp $
# Much help came from Alexandre Anriot, Robert Nagy, Bernd Ahlers,
# and, last but not least, Pedro la Peu.

COMMENT=	802.11 layer2 wireless network detector, sniffer, and IDS

# No wireless capabilities
NOT_FOR_ARCHS=	m88k

V=		2016-07-R1
DISTNAME=	kismet-${V}
PKGNAME=	kismet-${V:S,-,,g}
CATEGORIES=	net security
REVISION=	0

HOMEPAGE=	https://www.kismetwireless.net/
MASTER_SITES=	${HOMEPAGE}code/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc base-gcc

# "old" is required for setting --sysconfdir
CONFIGURE_STYLE=	gnu old

CONFDIR=		${SYSCONFDIR}/kismet
SUBST_VARS+=		CONFDIR

CONFIGURE_ARGS=		--sysconfdir=${CONFDIR} \
			--mandir=${PREFIX}/man \
			--with-suidgroup=_kismet

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

USE_GMAKE=		Yes

SAMPLES_DIR=		${DESTDIR}${LOCALBASE}/share/examples/kismet
FAKE_FLAGS+=		ETC=${SAMPLES_DIR}

# They don't have tests.
NO_TEST=		Yes

WANTLIB+=		c m panel pcap ${COMPILER_LIBCXX} curses util pcre
LIB_DEPENDS=		devel/pcre
RUN_DEPENDS=		net/wireshark,-text

.include <bsd.port.arch.mk>

post-configure:
	${SUBST_CMD} ${WRKSRC}/conf/kismet.conf \
			${WRKSRC}/man/kismet_drone.conf.5
	cd ${WRKSRC} && ${GMAKE} depend

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kismet
	${INSTALL_DATA} ${WRKSRC}/README \
			${PREFIX}/share/doc/kismet
	@cd ${WRKSRC} && ${GMAKE} binsuidinstall

.include <bsd.port.mk>
