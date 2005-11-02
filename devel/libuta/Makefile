# $OpenBSD: Makefile,v 1.15 2005/11/02 20:44:56 wilfried Exp $

COMMENT=	"graphical user interface library for C++"

VERSION=	0.4.4
DISTNAME=	libuta-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://libuta.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext m pthread stdc++ usbhid z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libuta/}

LIB_DEPENDS=	smpeg.1.3::devel/smpeg \
		SDL_mixer::devel/sdl-mixer \
		png.2::graphics/png \
		sigc.0.0:libsigc++-1.*:devel/libsigc++ \
		ttf.1.3::print/freetype

USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/freetype1 -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS=	libuta_la_LDFLAGS="-version-info 41:0:0"

VMEM_WARNING=	Yes

.include <bsd.port.mk>
