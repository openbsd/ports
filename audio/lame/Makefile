# $OpenBSD: Makefile,v 1.35 2008/03/15 10:10:15 ajacoutot Exp $

COMMENT=	lame ain't an MP3 encoder

DISTNAME=	lame-3.97
CATEGORIES=	audio

SHARED_LIBS=	mp3lame	1.0	# .0.1

HOMEPAGE=	http://lame.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - patent restriction
PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lame/}

FLAVORS=	no_x11
FLAVOR?=

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-mp3rtp

MAKE_FLAGS=	pkghtmldir=${TRUEPREFIX}/share/doc/lame

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	::devel/nasm
CONFIGURE_ARGS+= --enable-nasm
.else
CONFIGURE_ARGS+= --disable-nasm
.endif

.if ${FLAVOR:L} != "no_x11"
USE_X11=	Yes
CONFIGURE_ARGS+=--enable-mp3x \
		--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=	gtk.>=1.2,gdk.>=1.2::x11/gtk+
MODULES+=	devel/gettext
WANTLIB+=	X11 Xau Xdmcp Xext Xi glib gmodule
.endif

.include <bsd.port.mk>
