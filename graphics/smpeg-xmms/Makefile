# $OpenBSD: Makefile,v 1.1.1.1 2001/07/29 21:49:00 pvalchev Exp $

COMMENT=	"MPEG and VCD video playback in XMMS"

VERSION=	0.3.4
DISTNAME=	smpeg-xmms-${VERSION}
CATEGORIES=	graphics
NEED_VERSION=	1.427
HOMEPAGE=	http://www.xmms.org/files/plugins/smpeg-xmms/

MAINTAINER=	Wilbern Cobb <cobb@vedge.com.ar>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE} \
		http://ftp.linja.net/pub/mirrors/xmms/plugins/smpeg-xmms/

LIB_DEPENDS=	glib.1.2:glib-*:devel/glib \
		gtk.1.2:gtk+-*:x11/gtk+ \
		SDL.0.3:sdl-*-!no_x11:devel/sdl \
		smpeg.1.3:smpeg-*:devel/smpeg \
		xmms.2.0:xmms-*:audio/xmms

USE_X11=	Yes
USE_GMAKE=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-glib-prefix=${LOCALBASE} \
		--with-gtk-prefix=${LOCALBASE} \
		--with-sdl-prefix=${LOCALBASE} \
		--with-xmms-prefix=${LOCALBASE}

DOCS=		AUTHORS COPYING ChangeLog NEWS README TODO

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure \
	${WRKSRC}/Makefile.in ${WRKSRC}/src/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smpeg-xmms
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/smpeg-xmms

.include <bsd.port.mk>
