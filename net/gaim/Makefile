# $OpenBSD: Makefile,v 1.93 2006/10/31 19:32:50 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	"Gtk AIM, ICQ, IRC, Jabber, MSN, Yahoo, SILC and Zephyr client"

DISTNAME=	gaim-2.0.0beta4
SHARED_LIBS=	gaim 0.0 \
		gnt 0.0
CATEGORIES=	net

HOMEPAGE=	http://gaim.sourceforge.net/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		glib-2.0 ICE SM X11 Xext Xrender Xss \
			atk-1.0 c crypto fontconfig freetype \
			gmodule-2.0 gobject-2.0 gthread-2.0 pango-1.0 \
			ssl pangocairo-1.0 cairo glitz png \
			pangoft2-1.0 z pthread m ncurses panel stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaim/}

MODULES=	devel/gettext

LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		startup-notification-1::devel/startup-notification \
		silc,silcclient::devel/silc-toolkit \
		meanwhile::net/meanwhile \
		gadu::net/libgadu \
		xml2::textproc/libxml

BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig \
		:p5-XML-Parser-*:textproc/p5-XML-Parser

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
USE_GMAKE=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+= --disable-gevolution \
		 --disable-gnutls \
		 --disable-gstreamer \
		 --disable-nas \
		 --disable-nss \
		 --disable-perl \
		 --disable-tcl \
		 --disable-tk \
		 --disable-dbus \
		 --disable-cap \
		 --disable-schemas-install \
		 --disable-audio \
		 --enable-openssl \
		 --enable-consoleui

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	debug gtkspell
FLAVOR?=	

.if ${FLAVOR:L:Mdebug}
CFLAGS=		-O0
CONFIGURE_ARGS+=--enable-debug

INSTALL_STRIP=
.endif

.if ${FLAVOR:L:Mgtkspell}
LIB_DEPENDS+=	gtkspell::textproc/gtkspell
WANTLIB+=	aspell
.else
CONFIGURE_ARGS+=--disable-gtkspell
.endif

post-extract:
	@cp -f ${FILESDIR}/ssl-openssl.c ${WRKSRC}/libgaim/plugins/ssl

.include <bsd.port.mk>
