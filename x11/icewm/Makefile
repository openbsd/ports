# $OpenBSD: Makefile,v 1.55 2014/04/11 15:25:24 giovanni Exp $

COMMENT=	small and fast window manager

DISTNAME=	icewm-1.3.8
REVISION=	0
CATEGORIES=	x11	

HOMEPAGE=	http://www.icewm.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xrandr Xrender c fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 m pthread stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=icewm/}

MODULES=	devel/gettext

LIB_DEPENDS=	graphics/gdk-pixbuf2

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

USE_GROFF=	Yes

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
