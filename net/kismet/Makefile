# $OpenBSD: Makefile,v 1.13 2006/11/20 20:54:07 bernd Exp $
# Much help came from Alexandre Anriot, Robert Nagy, Bernd Ahlers,
# and, last but not least, Pedro la Peu.

COMMENT-main=	"802.11 layer2 wireless network detector, sniffer, and IDS"
COMMENT-gpsmap=	"reads GPS and Network XML datafiles and plots networks"

# No wireless capabilities
NOT_FOR_ARCHS=m68k m88k vax

V=		2006-04-R1
DISTNAME=	kismet-${V}
PKGNAME-main=	kismet-${V:S,-,,g}p0
PKGNAME-gpsmap=	kismet-gpsmap-${V:S,-,,g}
CATEGORIES=	net security

HOMEPAGE=	http://www.kismetwireless.net/
MASTER_SITES=	${HOMEPAGE}code/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	autoconf old
AUTOCONF_VERSION=	2.59

CONFDIR=		${SYSCONFDIR}/kismet
SUBST_VARS+=		CONFDIR

CONFIGURE_ARGS=		--sysconfdir=${CONFDIR}

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

USE_GMAKE=		Yes

SAMPLES_DIR=		${DESTDIR}${LOCALBASE}/share/examples/kismet
FAKE_FLAGS+=		ETC=${SAMPLES_DIR}

# They don't have tests.
NO_REGRESS=		Yes

PSEUDO_FLAVORS=         no_gpsmap
FLAVOR?=

MULTI_PACKAGES=		-main

WANTLIB-main=		c m ncurses panel pcap stdc++ z

.if !${FLAVOR:L:Mno_gpsmap}
USE_X11=		Yes
MULTI_PACKAGES+=	-gpsmap
WANTLIB-gpsmap=		c m ICE SM freetype Xt pthread Xext X11 z \
			stdc++ lcms jasper xml2 bz2 jbig jpeg tiff png
LIB_DEPENDS-gpsmap=	Magick.>=11,Wand.>=11::graphics/ImageMagick \
			gmp.>=6::devel/gmp \
			expat.>=4::textproc/expat
.else
CONFIGURE_ARGS+=	--disable-gpsmap
.endif

post-extract:
	@rm -rf ${WRKSRC}/libpcap-0.9.1-kis

post-configure:
	@cd ${WRKSRC} && ${GMAKE} depend

post-build:
	@perl -pi -e \
		"s,/usr/local/etc(/kismet.conf),${CONFDIR}$1," \
		${WRKSRC}/man/kismet.conf.5
	@perl -pi -e \
		"s,/usr/local/etc(/kismet.conf),${CONFDIR}$1," \
		${WRKSRC}/man/kismet_drone.conf.5

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kismet
	${INSTALL_DATA} ${WRKSRC}/README \
			${PREFIX}/share/doc/kismet

.include <bsd.port.mk>
