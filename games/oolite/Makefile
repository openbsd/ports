# $OpenBSD: Makefile,v 1.4 2011/01/15 10:13:23 sebastia Exp $

COMMENT=	space combat and trading game in the style of Elite

VERSION=	1.73.4
REVISION =	0
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

MODULES=	x11/gnustep
MODGNUSTEP_NEEDS_GUI = No

LIB_DEPENDS=	devel/sdl-mixer \
		graphics/png

WANTLIB += GL GLU SDL c m pthread SDL_mixer objc gnustep-base png

MAKE_FILE =	Makefile
ALL_TARGET=	release

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/oolite.app/oolite ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/oolite
	cp -R ${WRKBUILD}/oolite.app/Resources ${PREFIX}/share/oolite
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/oolite
	cp -R ${WRKSRC}/Doc/*.{TXT,pdf} ${PREFIX}/share/doc/oolite

.include <bsd.port.mk>
