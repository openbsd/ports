# $OpenBSD: Makefile,v 1.90 2006/06/27 17:32:26 fgsch Exp $

SHARED_ONLY=	Yes

COMMENT=	"Gtk AIM, ICQ, IRC, Jabber, MSN, Yahoo, SILC and Zephyr client"

DISTNAME=	gaim-1.5.0
PKGNAME=	${DISTNAME}p6
SHARED_LIBS=	gaim-remote 0.0
CATEGORIES=	net

HOMEPAGE=	http://gaim.sourceforge.net/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		glib-2.0.0.0 ICE SM X11 Xext Xrender Xss \
			atk-1.0.0.0 c crypto fontconfig freetype \
			gmodule-2.0.0.0 gobject-2.0.0.0 m pango-1.0.0.0 \
			ssl stdc++ pangocairo-1.0.0.0 cairo glitz png \
			pangoft2-1.0.0.0 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaim/}

MODULES=	devel/gettext

LIB_DEPENDS+=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		startup-notification-1.0.0::devel/startup-notification \
		silc,silcclient::devel/silc-toolkit
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-gevolution \
		 --disable-gnutls \
		 --disable-nas \
		 --disable-nss \
		 --disable-perl \
		 --disable-tcl \
		 --disable-tk \
		 --enable-openssl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	audio debug gtkspell
FLAVOR?=	

.if ${FLAVOR:L:Maudio}
LIB_DEPENDS+=	audiofile::devel/libaudiofile \
		ao.3::audio/libao
WANTLIB+=	pthread
.else
CONFIGURE_ARGS+= --disable-audio
.endif

.if ${FLAVOR:L:Mdebug}
CFLAGS= -O0
CONFIGURE_ARGS+=--enable-debug

INSTALL_STRIP=
.endif

.if ${FLAVOR:L:Mgtkspell}
LIB_DEPENDS+=	gtkspell::textproc/gtkspell
WANTLIB+=	iconv intl aspell
.else
CONFIGURE_ARGS+=--disable-gtkspell
.endif

post-extract:
	@cp -f ${FILESDIR}/ssl-openssl.c ${WRKSRC}/plugins/ssl

.include <bsd.port.mk>
