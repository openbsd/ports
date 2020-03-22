# $OpenBSD: Makefile,v 1.23 2020/03/22 18:13:35 naddy Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	redeclipse client
COMMENT-data=	redeclipse data
CATEGORIES=	games x11
MASTER_SITES=	https://github.com/red-eclipse/

HOMEPAGE=	http://www.redeclipse.net/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

MULTI_PACKAGES=	-main -data

N=		redeclipse
V=		1.6.0
PKGNAME=	${N}-${V}
PKGNAME-main=	${N}-${V}
PKGNAME-data=	${N}-data-${V}
MASTER_SITES=	https://github.com/red-eclipse/base/releases/download/v${V}/
DISTNAME=	redeclipse_${V}_combined
EXTRACT_SUFX=	.tar.bz2
REVISION-main=	2
REVISION-data=	0

PKG_ARCH-data=	*

# zlib (code) + CC-BY-SA-3.0+ (data)
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS-main +=	${BASE_PKGPATH},-data>=${V} \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

BUILD_DEPENDS=		graphics/GraphicsMagick
LIB_DEPENDS-main=	devel/sdl2-mixer \
			devel/sdl2-image \
			net/enet>=1.3.12
WANTLIB-main+=		GL X11 SDL2 SDL2_image SDL2_mixer c enet m pthread \
			${COMPILER_LIBCXX} z

WRKDIST=		${WRKDIR}/redeclipse-${V}/src
USE_GMAKE=		Yes
MAKE_ENV+=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			    TRUEPREFIX="${TRUEPREFIX}"
NO_TEST=		Yes

INSTALL_TARGET=		system-install

post-extract:
			find ${WRKDIR} \( -name .gitattributes -o \
			    -name .github -o -name .gitignore -o -name \
			    .gitmodules \) -prune -exec rm -r {} +

.include <bsd.port.mk>
