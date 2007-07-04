# $OpenBSD: Makefile,v 1.3 2007/07/04 17:39:08 ajacoutot Exp $

COMMENT=	drawing program for children

DISTNAME=	tuxpaint-0.9.17
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB=	X11 Xext c m png pthread usbhid SDL cairo gobject-2.0

MODULES=	devel/gettext
LIB_DEPENDS=	SDL_image.>=2::devel/sdl-image \
		SDL_mixer.>=3::devel/sdl-mixer \
		SDL_ttf.>=7:sdl-ttf->=2.0.8:devel/sdl-ttf \
		rsvg-2.>=18::x11/gnome/librsvg \
		paper::print/libpaper \
		utf8.>=1::misc/libutf8
RUN_DEPENDS=	::graphics/netpbm \
		:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes
USE_GMAKE=	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR}
CFLAGS+=	-DHAVE_STRCASESTR

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,@\$$\(CC\),\$$\(CC\),g' ${WRKSRC}/Makefile
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g;' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/src/manpage/tuxpaint.1

.include <bsd.port.mk>
