# $OpenBSD: Makefile,v 1.8 2007/02/27 11:15:25 espie Exp $

COMMENT=	'gui for ogle'
CATEGORIES=	x11

DISTNAME=	goggles-0.9.1
PKGNAME=	${DISTNAME}
EXTRACT_SUFX=	.tar.bz2
MASTER_SITES=	http://www.fifthplanet.net/files/
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
USE_X11=	Yes

CONFIGURE_ENV=LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} LP64_ARCHS="${LP64_ARCHS}"

LIB_DEPENDS=	FOX-1.6:fox->=1.6:devel/fox \
		dvdcontrol,msgevents::x11/ogle
	
WANTLIB=	GL GLU X11 Xext Xcursor Xrandr bz2 c jpeg \
		m png pthread stdc++ tiff z

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
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
