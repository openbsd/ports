# $OpenBSD: Makefile,v 1.60 2006/01/16 17:08:57 steven Exp $

COMMENT=	"scan ports and fingerprint stack of network hosts"

DISTNAME=	nmap-3.95
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	Okan Demirmen <okan@demirmen.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m pcap ssl stdc++ 

USE_GMAKE=		yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-libpcap=/usr \
			--with-openssl=/usr \
			--with-libpcre=${LOCALBASE} \
			--with-libdnet=${LOCALBASE}
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} \
				${WRKSRC}/nbase \
				${WRKSRC}/nsock/src

FLAVORS=	no_x11
FLAVOR?=	

LIB_DEPENDS+=	pcre::devel/pcre \
		dnet::net/libdnet

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=	nmap
CONFIGURE_ARGS+=--without-nmapfe
.else
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS+=	gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

USE_X11=	Yes
ALL_TARGET=	nmap nmapfe/nmapfe
WANTLIB+=	X11 Xext Xft Xrender fontconfig freetype \
		atk-1.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0
MODULES=	devel/gettext
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
