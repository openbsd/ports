# $OpenBSD: Makefile,v 1.9 2002/05/27 02:50:14 brad Exp $

COMMENT=	"graphical user interface library for C++"

VERSION=	0.3.40
DISTNAME=	libuta-${VERSION}
CATEGORIES=	devel
NEED_VERSION=	1.525

HOMEPAGE=	http://libuta.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libuta/}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh \
		patch-*

LIB_DEPENDS=	smpeg.1.3::devel/smpeg \
		SDL_mixer::devel/sdl-mixer \
		png.2::graphics/png \
		sigc.0.0::devel/libsigc++ \
		ttf.1.3::print/freetype

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

VMEM_WARNING=	Yes

.include <bsd.port.mk>
