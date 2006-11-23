# $OpenBSD: Makefile,v 1.12 2006/11/23 07:52:15 ckuethe Exp $

COMMENT-main=		"service daemon that monitors one or more GPSes"
COMMENT-motif=		"motif-based test apps using gpsd"

VERSION=		2.33
DISTNAME=		gpsd-${VERSION}
PKGNAME-main=		gpsd-${VERSION}p0
PKGNAME-motif=		gpsd-motif-${VERSION}p0
SHARED_LIBS=		gps	16.0
CATEGORIES=		misc geo

HOMEPAGE=		http://gpsd.berlios.de/

MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_BERLIOS:=gpsd/}

USE_LIBTOOL=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-ntpshm

PSEUDO_FLAVORS=		no_motif
FLAVOR?=

MULTI_PACKAGES=		-main

.if !${FLAVOR:L:Mno_motif}
MULTI_PACKAGES+=	-motif
LIB_DEPENDS=		::x11/openmotif
USE_X11=		Yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
.else
CONFIGURE_ARGS+=	--without-x
.endif

WANTLIB-main=		m ncurses c pthread
LIB_DEPENDS-main=	

WANTLIB-motif=		ICE Xaw X11 SM Xt c m pthread
LIB_DEPENDS-motif=	Xm::x11/openmotif gps::misc/gpsd

.include <bsd.port.mk>
