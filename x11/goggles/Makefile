# $OpenBSD: Makefile,v 1.20 2015/05/05 17:00:20 sthen Exp $

COMMENT=	gui for ogle
CATEGORIES=	x11

DISTNAME=	goggles-0.9.1
REVISION=	3

EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	https://gogglesmm.googlecode.com/files/
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
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FOX-1.6>=1 GL GLU X11 Xau Xcursor Xdmcp Xext Xfixes Xft
WANTLIB += Xrandr Xrender bz2 c dvdcontrol expat fontconfig freetype
WANTLIB += jpeg m msgevents png pthread pthread-stubs stdc++ tiff xcb z

.include <bsd.port.mk>
