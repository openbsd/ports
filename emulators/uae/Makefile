# $OpenBSD: Makefile,v 1.24 2013/03/11 11:06:04 espie Exp $

COMMENT=	UAE amiga emulator
DISTNAME=	uae-0.8.25
REVISION=	8
CATEGORIES=	emulators x11

HOMEPAGE=	http://uae.coresystems.de/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xcomposite Xdamage gio-2.0 \
		Xrandr Xrender Xxf86dga Xxf86vm atk-1.0 c cairo expat \
		fontconfig freetype glib-2.0 gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread z \
		gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0 SDL \
		pthread-stubs xcb gthread-2.0 xcb-render xcb-render-util

MASTER_SITES=	ftp://ftp.coresystems.de/pub/uae/sources/develop/

MODULES=	devel/gettext
LIB_DEPENDS+=	x11/gtk+2 \
		devel/sdl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-dga --enable-vidmode \
			--with-sdl-sound
CONFIGURE_ENV=		ac_cv_header_sys_audioio_h=no

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
