# $OpenBSD: Makefile,v 1.53 2013/03/11 11:46:13 espie Exp $

COMMENT=	small and fast window manager

DISTNAME=	icewm-1.3.7
REVISION=	0
CATEGORIES=	x11	

HOMEPAGE=	http://www.icewm.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xinerama Xrandr Xrender
WANTLIB += c expat fontconfig freetype gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m png
WANTLIB += pthread pthread-stubs stdc++ xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=icewm/}

MODULES=	devel/gettext

# XXX LIB_DEPENDS are only checked directly. Indirect dependencies are not
# enough for a @depends line
LIB_DEPENDS=	graphics/gdk-pixbuf2 \
		x11/gtk+2

CONFIGURE_STYLE=gnu		
CONFIGURE_ARGS=	--with-docdir=${PREFIX}/share/doc \
		--with-libdir=${PREFIX}/share/icewm \
		--with-cfgdir=${SYSCONFDIR}/icewm \
		--with-kdedatadir=${LOCALBASE}/share \
		--with-x \
		--enable-shaped-decorations \
		--enable-corefonts \
		--enable-i18n

# XXX TODO
#CONFIGURE_ARGS+=--with-icesound=sndio

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.arch.mk>

# XXX rendering bug on big-endian systems 
.if ${PROPERTIES:Mle}
CONFIGURE_ARGS+= --enable-gradients
.endif

.if ${PROPERTIES:Mapm}
PATCH_LIST=	patch-* apm-*
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/icewm-7.html

.include <bsd.port.mk>
