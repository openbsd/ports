# $OpenBSD: Makefile,v 1.29 2019/07/12 20:46:10 sthen Exp $

COMMENT=	UAE amiga emulator
DISTNAME=	uae-0.8.25
REVISION=	11
CATEGORIES=	emulators x11

HOMEPAGE=	http://uae.coresystems.de/

PERMIT_PACKAGE=	Yes

WANTLIB=  ICE SDL SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB+= Xfixes Xi Xinerama Xrandr Xrender Xxf86dga Xxf86vm atk-1.0 c
WANTLIB+= cairo expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB+= gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB+= pixman-1 png pthread xcb xcb-render xcb-render-util z

MASTER_SITES=	ftp://ftp.coresystems.de/pub/uae/sources/develop/

LIB_DEPENDS+=	x11/gtk+2 \
		devel/sdl

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	--enable-dga --enable-vidmode \
			--with-sdl-sound
CONFIGURE_ENV=		ac_cv_header_sys_audioio_h=no
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+=		LDFLAGS=-Wl,-znotext
.endif

NO_TEST=	Yes

DOCS=		COMPATIBILITY CREDITS FAQ NEWS README README.PROGRAMMERS

FILES=		mousehack timehack transdisk transrom uae-control \
		uae-control.info uae_rcli uaectrl

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/uae ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/readdisk ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/uae/amiga
	cd ${WRKSRC}/docs && ( \
	  ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/uae; \
	  ${INSTALL_DATA} unix/README ${PREFIX}/share/uae/README.unix )
	cd ${WRKSRC}/amiga && ${INSTALL_DATA} ${FILES} \
	  ${PREFIX}/share/uae/amiga

.include <bsd.port.mk>
