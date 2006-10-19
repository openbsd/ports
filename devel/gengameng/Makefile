# $OpenBSD: Makefile,v 1.18 2006/10/19 00:35:04 pvalchev Exp $

COMMENT=	"X11 game engine library"

VERSION=	4.1
DISTNAME=	gengameng-${VERSION}
PKGNAME=	${DISTNAME}p3
SHARED_LIBS=	gengameng 5.0

CATEGORIES=	devel x11

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext m usbhid

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

LIB_DEPENDS=	SDL::devel/sdl
BUILD_DEPENDS=	::devel/sdl-image
RUN_DEPENDS=	::devel/sdl-image

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
