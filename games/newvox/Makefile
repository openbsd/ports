# $OpenBSD: Makefile,v 1.9 2009/08/10 06:31:42 kili Exp $

COMMENT=	voxel-style landscape rendering fly-by

DISTNAME=	newvox-1.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games

HOMEPAGE=	http://www.libsdl.org/projects/newvox/

MASTER_SITES=	${HOMEPAGE}/src/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c m pthread pthread-stubs usbhid xcb

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/newvox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/newvox

.include <bsd.port.mk>
