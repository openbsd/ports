# $OpenBSD: Makefile,v 1.15 2009/08/10 06:29:52 kili Exp $

COMMENT=		wm-dockapp; audio mixer

DISTNAME=		wmmixer-1.0-beta1
PKGNAME=		wmmixer-1.0b1p1
CATEGORIES=		audio x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xpm c m ossaudio stdc++ \
			pthread-stubs xcb

EXTRACT_SUFX=		.tgz

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake noman

WRKDIST=		${WRKDIR}/wmmixer

SAMPLE_DIR=		${PREFIX}/share/examples/wmmixer
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmixer ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/home.wmmixer ${SAMPLE_DIR}/dot.wmmixer.sample

.include <bsd.port.mk>
