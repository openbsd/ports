# $OpenBSD: Makefile,v 1.23 2020/08/16 20:36:56 sebastia Exp $

COMMENT=	space combat and trading game in the style of Elite

VERSION=	1.73.4
REVISION =	16
DISTNAME=	oolite-dev-source-${VERSION}
PKGNAME=	oolite-${VERSION}
CATEGORIES=	games

HOMEPAGE=	http://www.oolite.org/

MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=oolite-linux.berlios/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/gnustep
MODGNUSTEP_NEEDS_GUI = No

LIB_DEPENDS=	devel/sdl-mixer \
		graphics/png

WANTLIB += c GL GLU SDL SDL_mixer png
WANTLIB += ${COMPILER_LIBCXX}

MAKE_FILE =	Makefile
MAKE_FLAGS =	LD="${CC}"
ALL_TARGET=	release

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/oolite.app/oolite ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/oolite
	cp -R ${WRKBUILD}/oolite.app/Resources ${PREFIX}/share/oolite
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/oolite
	cp -R ${WRKSRC}/Doc/*.{TXT,pdf} ${PREFIX}/share/doc/oolite

.include <bsd.port.mk>
