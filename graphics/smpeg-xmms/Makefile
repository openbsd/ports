# $OpenBSD: Makefile,v 1.3 2001/12/28 22:11:58 pvalchev Exp $

COMMENT=	"MPEG and VCD video playback in XMMS"

VERSION=	0.3.4
DISTNAME=	smpeg-xmms-${VERSION}
PKGNAME=	xmms-smpeg-${VERSION}
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
		SDL::devel/sdl \
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

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure \
	${WRKSRC}/Makefile.in ${WRKSRC}/src/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-smpeg
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-smpeg

.include <bsd.port.mk>
