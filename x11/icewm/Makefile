# $OpenBSD: Makefile,v 1.48 2010/12/12 19:13:01 jasper Exp $

COMMENT=	small and fast window manager

DISTNAME=	icewm-1.3.7
CATEGORIES=	x11	

HOMEPAGE=	http://www.icewm.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xinerama Xrandr Xrender
WANTLIB += c expat fontconfig freetype gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m png
WANTLIB += pthread pthread-stubs stdc++ xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=icewm/}

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2

CONFIGURE_STYLE=gnu		
CONFIGURE_ARGS=	--with-docdir=${PREFIX}/share/doc \
		--with-libdir=${PREFIX}/share/icewm \
		--with-cfgdir=${SYSCONFDIR}/icewm \
		--with-kdedatadir=${LOCALBASE}/share \
		--with-x \
		--enable-shaped-decorations \
		--enable-corefonts \
		--enable-i18n

# XXX rendering bug on big-endian systems 
.if ${MACHINE_ARCH} != "hppa" && ${MACHINE_ARCH} != "m68k" && \
${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "mips64" && \
${MACHINE_ARCH} != "powerpc" && ${MACHINE_ARCH} != "sparc" && \
${MACHINE_ARCH} != "sparc64"
CONFIGURE_ARGS+= --enable-gradients
.endif

# XXX TODO
#CONFIGURE_ARGS+=--with-icesound=sndio

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/icewm-7.html

.include <bsd.port.mk>

.for m in ${MACHINE_ARCH} ${MACHINE}
.if ${APM_ARCHS:L:M$m}
PATCH_LIST=	patch-* apm-*
.endif
.endfor
