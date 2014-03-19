# $OpenBSD: Makefile,v 1.32 2014/03/19 13:28:57 jasper Exp $
# Much help came from Alexandre Anriot, Robert Nagy, Bernd Ahlers,
# and, last but not least, Pedro la Peu.

COMMENT-main=	802.11 layer2 wireless network detector, sniffer, and IDS
COMMENT-gpsmap=	reads GPS and Network XML datafiles and plots networks

# No wireless capabilities
NOT_FOR_ARCHS=	m88k vax

V=		2008-05-R1
DISTNAME=	kismet-${V}
REVISION=	2
PKGNAME-main=	kismet-${V:S,-,,g}
PKGNAME-gpsmap=	kismet-gpsmap-${V:S,-,,g}
CATEGORIES=	net security

HOMEPAGE=	http://www.kismetwireless.net/
MASTER_SITES=	${HOMEPAGE}code/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

# "old" is required for setting --sysconfdir
CONFIGURE_STYLE=	gnu old

CONFDIR=		${SYSCONFDIR}/kismet
SUBST_VARS+=		CONFDIR

CONFIGURE_ARGS=		--sysconfdir=${CONFDIR} \
			--mandir=${PREFIX}/man \
			--disable-dbus

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

USE_GMAKE=		Yes
USE_GROFF =		Yes

SAMPLES_DIR=		${DESTDIR}${LOCALBASE}/share/examples/kismet
FAKE_FLAGS+=		ETC=${SAMPLES_DIR}

# They don't have tests.
NO_TEST=		Yes

PSEUDO_FLAVORS=         no_gpsmap
FLAVOR?=

MULTI_PACKAGES=		-main -gpsmap

WANTLIB-main=		c m ncurses panel pcap stdc++
WANTLIB-gpsmap=		c expat m pthread stdc++ z \
			MagickCore>=1 gmp>=6
LIB_DEPENDS-gpsmap=	graphics/ImageMagick \
			devel/gmp

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-gpsmap}
CONFIGURE_ARGS+=	--disable-gpsmap
.endif

post-configure:
	@cd ${WRKSRC} && ${GMAKE} depend

post-patch:
	@perl -pi -e \
		's,/usr/local/etc(/kismet.conf),${CONFDIR}$$1,' \
		${WRKSRC}/man/kismet.conf.5
	@perl -pi -e \
		's,/usr/local/etc(/kismet.conf),${CONFDIR}$$1,' \
		${WRKSRC}/man/kismet_drone.conf.5

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kismet
	${INSTALL_DATA} ${WRKSRC}/README \
			${PREFIX}/share/doc/kismet

.include <bsd.port.mk>
