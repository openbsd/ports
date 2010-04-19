# $OpenBSD: Makefile,v 1.1.1.1 2010/04/19 23:44:55 nicm Exp $

COMMENT=	space combat and trading game in the style of Elite

VERSION=	1.73.4
DISTNAME=	oolite-dev-source-${VERSION}
PKGNAME=	oolite-${VERSION}
CATEGORIES=	games

HOMEPAGE=	http://www.oolite.org/

MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=oolite-linux/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	gcc4
MODGCC4_ARCHES=	*
MODGCC4_LANGS=	c

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer \
		objc:gobjc->=4.2,<4.3|gobjc->=4.2v0,<4.3v0:lang/gcc/4.2,-objc \
		gnustep-base::x11/gnustep/base \
		png::graphics/png

WANTLIB += GL GLU SDL c m pthread

USE_GMAKE=	Yes
MAKE_ENV=	GNUSTEP_MAKEFILES=`gnustep-config --variable=GNUSTEP_MAKEFILES`
ALL_TARGET=	release

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/oolite.app/oolite ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/oolite
	cp -R ${WRKBUILD}/oolite.app/Resources ${PREFIX}/share/oolite
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/oolite
	cp -R ${WRKSRC}/Doc/*.{TXT,pdf} ${PREFIX}/share/doc/oolite

.include <bsd.port.mk>
