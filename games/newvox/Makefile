# $OpenBSD: Makefile,v 1.4 2001/12/28 22:11:58 pvalchev Exp $

COMMENT=	"voxel-style landscape rendering fly-by"

DISTNAME=	newvox-1.0
CATEGORIES=	games
NEED_VERSION=	1.419

HOMEPAGE=	http://www.libsdl.org/projects/newvox

MASTER_SITES=	${HOMEPAGE}/src/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/newvox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/newvox

.include <bsd.port.mk>
