# $OpenBSD: Makefile,v 1.39 2009/08/10 06:29:52 kili Exp $

COMMENT-main=	lame ain't an MP3 encoder
COMMENT-mp3x=	gtk frame analyzer

V=		3.98.2
DISTNAME=	lame-398-2
PKGNAME-main=	lame-${V}
PKGNAME-mp3x=	lame-mp3x-${V}p0

SHARED_LIBS=	mp3lame	2.0	# .0.1

CATEGORIES=	audio

HOMEPAGE=	http://lame.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - patent restriction
PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses
WANTLIB-main=	${WANTLIB}
WANTLIB-mp3x=	${WANTLIB} X11 Xau Xdmcp Xext Xi glib gmodule pthread-stubs \
		xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lame/}

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

MULTI_PACKAGES= -main

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES+=	-mp3x
.endif

.if ${MULTI_PACKAGES:M-mp3x}
MODULES=		devel/gettext
.endif

LIB_DEPENDS-main=
RUN_DEPENDS-main=

LIB_DEPENDS-mp3x=	${MODGETTEXT_LIB_DEPENDS} \
			gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
			mp3lame::audio/lame
RUN_DEPENDS-mp3x=	${MODGETTEXT_RUN_DEPENDS}

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-mp3rtp \
		--with-fileio=lame

.if ${MULTI_PACKAGES:M-mp3x}
USE_X11=		Yes
CONFIGURE_ARGS+=	--enable-mp3x \
			--with-gtk-prefix=${LOCALBASE}
.endif

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
CONFIGURE_ARGS+= --enable-nasm
.else
CONFIGURE_ARGS+= --disable-nasm
.endif

MAKE_FLAGS=	pkghtmldir=${TRUEPREFIX}/share/doc/lame

.include <bsd.port.mk>
