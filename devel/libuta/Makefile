# $OpenBSD: Makefile,v 1.1.1.1 2001/07/28 07:16:23 pvalchev Exp $

COMMENT=	"graphical user interface library for C++"

VERSION=	0.3.39
DISTNAME=	libuta-${VERSION}
CATEGORIES=	devel
NEED_VERSION=	1.427

HOMEPAGE=	http://libuta.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= libuta

LIB_DEPENDS=	smpeg.1.3:smpeg-*:devel/smpeg \
		SDL_mixer.0.0:sdl-mixer-*:devel/sdl-mixer \
		png.2:png-*:graphics/png \
		sigc.0.0:libsigc++-*:devel/libsigc++

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
