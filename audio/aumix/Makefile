# $OpenBSD: Makefile,v 1.11 2004/08/10 08:04:01 xsa Exp $

COMMENT=	"full-screen ncurses or GTK-based audio mixer"

DISTNAME=	aumix-2.8
CATEGORIES=	audio

HOMEPAGE=	http://jpj.net/~trevor/aumix.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS+=	gdk-x11-2.0.0.14,gdk_pixbuf-2.0.0.14,gtk-x11-2.0.0.14::x11/gtk+2
USE_X11=	Yes
.endif

.if ${FLAVOR:L:Mno_curses} 
CONFIGURE_ARGS+= --without-ncurses
.endif

.if ${FLAVOR:L:Mdummy}
CONFIGURE_ARGS+= --enable-dummy-mixer
.endif

.include <bsd.port.mk>
