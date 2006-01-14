# $OpenBSD: Makefile,v 1.6 2006/01/14 20:05:49 steven Exp $

COMMENT=		"service daemon that monitors one or more GPSes"
COMMENT-motif=		"motif-based test apps using gpsd"

VERSION=		2.29
DISTNAME=		gpsd-${VERSION}
PKGNAME=		gpsd-${VERSION}p2
PKGNAME-motif=		gpsd-motif-${VERSION}p0
SHARED_LIBS=		gps	16.0
CATEGORIES=		misc

HOMEPAGE=		http://gpsd.berlios.de/

MAINTAINER=		Chris Kuethe <chris.kuethe@gmail.com>

WANTLIB=		m ncurses c pthread

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.berlios.de/gpsd/

USE_LIBTOOL=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-ntpshm
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

PSEUDO_FLAVORS=		no_motif
FLAVOR?=

.if !${FLAVOR:L:Mno_motif}
MULTI_PACKAGES=		-motif
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
.endif

SUBPACKAGE?=

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-motif"
WANTLIB=		ICE Xaw X11 SM Xt c m pthread
LIB_DEPENDS=		Xm::x11/openmotif \
			gps::misc/gpsd
. endif
.endif

.include <bsd.port.mk>
