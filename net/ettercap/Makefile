# $OpenBSD: Makefile,v 1.42 2009/08/06 23:44:07 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	multi-purpose sniffer/interceptor/logger

VER=		0.7.3
DISTNAME=	ettercap-NG-${VER}
PKGNAME=	ettercap-${VER}p3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ettercap/}

HOMEPAGE=	http://ettercap.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c crypto form menu ncurses panel pcap pthread ssl z

LIB_DEPENDS=	lib/libnet-1.1/net.=11:libnet->=1.1,<1.2:net/libnet/1.1 \
		ltdl::devel/libtool,-ltdl \
		pcre::devel/pcre

FLAVORS=	no_x11
FLAVOR?=

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+= --with-libnet=${LOCALBASE} \
		 --with-libpcre=${LOCALBASE}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --enable-gtk=no
.else
USE_X11=	Yes
MODULES=	devel/gettext
LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ettercap
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/etter.conf \
	    ${PREFIX}/share/examples/ettercap

.include <bsd.port.mk>
