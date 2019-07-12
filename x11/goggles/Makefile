# $OpenBSD: Makefile,v 1.29 2019/07/12 20:51:12 sthen Exp $

COMMENT=	gui for ogle
CATEGORIES=	x11

DISTNAME=	goggles-0.9.1
REVISION=	6

EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=gogglesmm/}
HOMEPAGE=	http://www.fifthplanet.net/goggles.html
MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT=/bin/sh ${WRKDIST}/gb
CONFIGURE_ARGS+=--fox-prefix=${LOCALBASE} \
		--ogle-prefix=${LOCALBASE} \
		--use-config=${FILESDIR}/config.local \
		--prefix=${LOCALBASE}
WRKCONF=	${WRKDIST}
WRKSRC=		${WRKDIST}
MAKE_FILE=	gb.make
ALL_TARGET=
USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_ENV=LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} LP64_ARCHS="${LP64_ARCHS}"

LIB_DEPENDS=	devel/fox \
		x11/ogle


MAKE_FLAGS=	-f ${WRKCONF}/conf.mk
MAKE_ENV=	CC="${CC}" CXX="${CXX}"

post-build:
	@echo '#! /bin/sh' >${WRKDIST}/scripts/goggles
	@echo 'DVDP_UI=${PREFIX}/libexec/goggles exec ${LOCALBASE}/bin/ogle "$@"' >>${WRKDIST}/scripts/goggles

DOCDIR=		${PREFIX}/share/doc/goggles

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/scripts/goggles ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/src/goggles ${PREFIX}/libexec
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/desktop/goggles_manual.pdf ${DOCDIR}
# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += FOX-1.6>=1 GL GLU X11 Xau Xcursor Xdmcp Xext Xfixes Xft
WANTLIB += Xrandr Xrender bz2 c dvdcontrol expat fontconfig freetype
WANTLIB += jpeg m msgevents png pthread ${COMPILER_LIBCXX} tiff xcb z

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
