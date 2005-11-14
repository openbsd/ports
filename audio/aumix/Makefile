# $OpenBSD: Makefile,v 1.14 2005/11/14 21:11:17 wilfried Exp $

COMMENT=	"full-screen ncurses or GTK-based audio mixer"

DISTNAME=	aumix-2.8
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio

HOMEPAGE=	http://jpj.net/~trevor/aumix.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
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

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-gtk
.else
BUILD_DEPENDS+=	::devel/pkgconfig
LIB_DEPENDS+=	gdk-x11-2.0.0.14,gdk_pixbuf-2.0.0.14,gtk-x11-2.0.0.14::x11/gtk+2
USE_X11=	Yes
WANTLIB+=	X11 fontconfig freetype.13
WANTLIB+=	glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0
WANTLIB+=	atk-1.0.0.0 cairo pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0
.endif

.if ${FLAVOR:L:Mno_curses} 
CONFIGURE_ARGS+= --without-ncurses
.else
WANTLIB+=	ncurses
.endif

.if ${FLAVOR:L:Mdummy}
CONFIGURE_ARGS+= --enable-dummy-mixer
.endif

.include <bsd.port.mk>
