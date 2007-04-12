# $OpenBSD: Makefile,v 1.22 2007/04/12 20:24:30 sturm Exp $

COMMENT=	"MP3 technical info viewer and ID3 1.x tag editor"

DISTNAME=	mp3info-0.8.5a
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio

HOMEPAGE=	http://www.ibiblio.org/mp3info/

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mp3-utils/mp3info/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=	mp3info doc
INSTALL_TARGET=	install-mp3info
.else
USE_X11=	Yes
MODULES=	devel/gettext
LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2
WANTLIB+=	X11 Xau Xdmcp Xrender expat fontconfig freetype m z atk-1.0 \
		cairo glib-2.0 gmodule-2.0 gobject-2.0 glitz pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png
.endif

.include <bsd.port.mk>
