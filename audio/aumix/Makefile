# $OpenBSD: Makefile,v 1.39 2013/03/10 22:55:01 espie Exp $

COMMENT=	full-screen ncurses or GTK-based audio mixer

DISTNAME=	aumix-2.8
REVISION=	14
CATEGORIES=	audio

HOMEPAGE=	http://jpj.net/~trevor/aumix.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ossaudio

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aumix/} \
		http://jpj.net/~trevor/aumix/ \
		http://jpj.net/~trevor/aumix/old/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

FLAVORS=	no_x11 no_curses dummy
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-own-labels --without-gtk1
CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib'

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+= --without-gtk
.else
LIB_DEPENDS+=	x11/gtk+2
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png z
WANTLIB += pthread-stubs xcb gdk-x11-2.0>=0.14 gdk_pixbuf-2.0>=0.14
WANTLIB += gtk-x11-2.0>=0.14 gthread-2.0 pthread xcb-render GL xcb-shm
.endif

.if ${FLAVOR:Mno_curses} 
CONFIGURE_ARGS+= --without-ncurses
.else
WANTLIB+=	ncurses
.endif

.if ${FLAVOR:Mdummy}
CONFIGURE_ARGS+= --enable-dummy-mixer
.endif

.include <bsd.port.mk>
