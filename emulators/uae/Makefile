# $OpenBSD: Makefile,v 1.12 2007/10/08 13:45:53 fgsch Exp $

COMMENT=	UAE amiga emulator
DISTNAME=	uae-0.8.25
CATEGORIES=	emulators x11

HOMEPAGE=	http://uae.coresystems.de/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender Xxf86dga Xxf86vm atk-1.0 c cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread z

MASTER_SITES=	ftp://ftp.coresystems.de/pub/uae/sources/develop/

MODULES=	devel/gettext
LIB_DEPENDS+=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-dga --enable-vidmode

NO_REGRESS=	Yes

# Workaround compiler bug on hppa: cc1plus spinning forever
.if ${MACHINE_ARCH} == "hppa"
CFLAGS+=	-O0
.endif

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
