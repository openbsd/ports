# $OpenBSD: Makefile,v 1.36 2011/01/03 19:47:11 jasper Exp $

COMMENT=	mpeg video player library with sound support

DISTNAME=	smpeg-0.4.4
PKGNAME=	${DISTNAME}
REVISION =	11
SHARED_LIBS=	smpeg 2.0
CATEGORIES=	devel graphics

HOMEPAGE=       http://www.lokigames.com/development/smpeg.php3

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xau Xdmcp Xext Xrandr Xrender SDL \
			c m pthread pthread-stubs sndio usbhid xcb

MASTER_SITES=	http://www.dulug.de/loki/open-source/smpeg/ \
		http://gd.tuwien.ac.at/video/lib/smpeg/ \
		http://mirrors.sunsite.dk/lokigames/open-source/smpeg/

MODULES=	converters/libiconv

LIB_DEPENDS=	devel/sdl

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	 LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-opengl-player \
		 --disable-gtk-player

post-install:
	${INSTALL_MAN} ${FILESDIR}/smpeg.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
