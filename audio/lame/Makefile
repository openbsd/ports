# $OpenBSD: Makefile,v 1.26 2005/12/23 15:03:07 espie Exp $

COMMENT=	"lame ain't an MP3 encoder"

VERSION=	3.96.1

DISTNAME=	lame-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lame/}
SHARED_LIBS=	mp3lame	0.1
MODGNU_SHARED_LIBS=	mp3lame	'-no-undefined'

HOMEPAGE=	http://www.mp3dev.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses

USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_ARGS+=	--enable-mp3rtp
MAKE_FLAGS=	pkghtmldir=${TRUEPREFIX}/share/doc/lame
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}
USE_LIBTOOL=	Yes

# XXX gcc3/nasm issue
.if (${MACHINE_ARCH} == "i386") && (${CC} != "egcc")
BUILD_DEPENDS=	nasm::devel/nasm
CONFIGURE_ARGS+= --enable-nasm
.else
CONFIGURE_ARGS+= --disable-nasm
.endif

.if ${FLAVOR:L} != "no_x11"
CONFIGURE_ARGS+=	--enable-mp3x \
			--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=		gtk.1.2,gdk.1.2::x11/gtk+
WANTLIB+=		X11 Xext Xi glib gmodule iconv intl
.endif

.include <bsd.port.mk>
