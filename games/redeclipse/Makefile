# $OpenBSD: Makefile,v 1.2 2013/08/20 22:05:53 zhuk Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	redeclipse client
COMMENT-data=	redeclipse data
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=redeclipse/}

HOMEPAGE=	http://www.redeclipse.net/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

MULTI_PACKAGES=	-main -data

N=		redeclipse
V=		1.4
REVISION-main=	2
REVISION-data=	2
PKGNAME=	${N}-${V}
PKGNAME-main=	${N}-${V}
PKGNAME-data=	${N}-data-${V}
DISTNAME=	${N}_${V}_nix
EXTRACT_SUFX=	.tar.bz2

PKG_ARCH-data=	*

# zlib (code) + CC-BY-SA-3.0 (data)
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS-main +=	${BASE_PKGPATH},-data \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

BUILD_DEPENDS=		textproc/gsed
LIB_DEPENDS-main=	devel/sdl-mixer \
			devel/sdl-image \
			net/enet
WANTLIB-main+=		GL X11 SDL SDL_image SDL_mixer c enet m pthread stdc++ z

WRKDIST=		${WRKDIR}/${N}-${V}/src
USE_GMAKE=		Yes
MAKE_ENV+=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			    TRUEPREFIX="${TRUEPREFIX}"
NO_TEST=		Yes

INSTALL_TARGET=		system-install

.include <bsd.port.mk>
