# $OpenBSD: Makefile,v 1.11 2015/07/29 04:04:04 jsg Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	redeclipse client
COMMENT-data=	redeclipse data
CATEGORIES=	games x11
MASTER_SITES=	https://github.com/red-eclipse/

HOMEPAGE=	http://www.redeclipse.net/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

MULTI_PACKAGES=	-main -data

N=		redeclipse
V=		1.5.3
PKGNAME=	${N}-${V}
PKGNAME-main=	${N}-${V}
PKGNAME-data=	${N}-data-${V}

DISTFILES=	redeclipse-{base/archive/v}${V}${EXTRACT_SUFX}

SM=	acerspyro actors appleflap blendbrush caustics crosshairs elyvisions \
	fonts freezurbern john jojo jwin luckystrike maps mayhem mikeplus64 \
	misc nobiax particles philipk projectiles props skyboxes sounds \
	textures torley trak ulukai unnamed vanities vegetation weapons wicked 

.for MOD in ${SM}
DISTFILES+=	redeclipse-data-${MOD}-{${MOD}/archive/v}${V}${EXTRACT_SUFX}
.endfor

PKG_ARCH-data=	*

# zlib (code) + CC-BY-SA-3.0+ (data)
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS-main +=	${BASE_PKGPATH},-data>=${V} \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

BUILD_DEPENDS=		graphics/GraphicsMagick
LIB_DEPENDS-main=	devel/sdl-mixer \
			devel/sdl-image \
			net/enet>=1.3.12
WANTLIB-main+=		GL X11 SDL SDL_image SDL_mixer c enet m pthread stdc++ z

WRKDIST=		${WRKDIR}/base-${V}/src
USE_GMAKE=		Yes
MAKE_ENV+=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			    TRUEPREFIX="${TRUEPREFIX}"
NO_TEST=		Yes

INSTALL_TARGET=		system-install

post-extract:
.for MOD in ${SM}
	rm -f ${WRKDIR}/${MOD}-${V}/.gitattributes
	rm -f ${WRKDIR}/${MOD}-${V}/.gitignore
	rmdir ${WRKDIR}/base-${V}/data/${MOD}
	mv ${WRKDIR}/${MOD}-${V} ${WRKDIR}/base-${V}/data/${MOD}
.endfor

.include <bsd.port.mk>
