# $OpenBSD: Makefile,v 1.9 2002/11/25 22:39:52 naddy Exp $

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

MODULES=	gettext

FLAVORS=	no_x11 no_curses dummy
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-own-labels --without-gtk
CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib'

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-gtk1
.else
LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+
.endif

.if ${FLAVOR:L:Mno_curses} 
CONFIGURE_ARGS+= --without-ncurses
.endif

.if ${FLAVOR:L:Mdummy}
CONFIGURE_ARGS+= --enable-dummy-mixer
.endif

.include <bsd.port.mk>
